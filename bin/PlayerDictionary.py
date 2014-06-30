#!/usr/bin/python

import urllib
from bs4 import BeautifulSoup
import MySQLdb
import MySQLdb.cursors

# used to access the principal database
database = {}
database['hostname'] = 'teamroster.db.9504599.hostedresource.com'
database['username'] = 'teamroster'
database['password'] = 'j2i@GLc4'
database['name'] = 'teamroster'

#-------------------------------------------------------------------------------

def getMatchPlayersAndHeroes(match):
    '''Returns the Dotabuff ID numbers of each player in the match, the hero
    that the player used, and the team that the player was on.
    Results are in the form:
    {'radiant':[(dotabuffID, heroName)
                (dotabuffID, heroName)
                (dotabuffID, heroName)
                (dotabuffID, heroName)
                (dotabuffID, heroName)],
        'dire':[(dotabuffID, heroName)
                (dotabuffID, heroName)
                (dotabuffID, heroName)
                (dotabuffID, heroName)
                (dotabuffID, heroName)]}  '''
    
    # initialize blank output dictionary
    players = {'radiant':[], 'dire':[]}
    
    # create BeautifulSoup object called "soup" from DotaBuff
    sock = urllib.urlopen('http://dotabuff.com/matches/%s' % (match,))
    htmlSource = sock.read()
    sock.close()
    soup = BeautifulSoup(htmlSource)
    
    # save the radiant and dire sections of the match page
    radiantResults = soup.find('section', {'class' : 'radiant'})
    direResults = soup.find('section', {'class' : 'dire'})
    
    # populate non-anonymous Radiant players + heroes
    for player in radiantResults('a', {'class' : 'player-radiant'}):
        hero = player.parent.parent.find('img', {'class' : 'image-hero'}).get('alt')
        hero = hero.replace("'","")
        players['radiant'].append((player.get('href')[9:], hero))

    # populate non-anonymous Dire players + heroes
    for player in direResults('a', {'class' : 'player-dire'}):
        hero = player.parent.parent.find('img', {'class' : 'image-hero'}).get('alt')
        hero = hero.replace("'","")
        players['dire'].append((player.get('href')[9:], hero))
    
    return players

#-------------------------------------------------------------------------------

def stripPlayerDictionary(db, players):
    '''Takes a database connection dictionary and a player + hero dictionary of
    the form given by the method getMatchPlayersAndHeroes(), strips it of all
    players who are not a member of the group, and returns it.'''
    
    # Connect to the database.  Create an SQL string to build queries and a
    # Cursor object to run them.
    database = MySQLdb.connect(host = db['hostname'],
                               user = db['username'],
                               passwd = db['password'],
                               db = db['name'],
                               cursorclass = MySQLdb.cursors.DictCursor)
    sql = ''
    cursor = database.cursor()
    
    # Get tuple of all member Dotabuff IDs as dictionaries.  
    sql = 'SELECT dotabuffid FROM steamdotabuff'
    cursor.execute(sql)
    queryResult = cursor.fetchall()
    
    # Convert tuple of dictionaries to list of values using list comprehension.
    members = [x['dotabuffid'] for x in queryResult]
    # Remove all non-member player-ID numbers from list using list comprehension.
    for team in players:
        players[team][:] = [(p, h) for (p, h) in players[team] if int(p) in members]
    
    # Close cursor and database.
    cursor.close()
    database.close()
    
    # Return result.
    return players

#-------------------------------------------------------------------------------

def getStrippedPlayerDictionary(db, matchID):
    '''Takes a database connection dictionary and a match ID.  Returns a
    stripped player dictionary (meaning it only contains records of members.)'''
    
    unstripped = getMatchPlayersAndHeroes(matchID)
    stripped = stripPlayerDictionary(database, unstripped)
    return stripped

#-------------------------------------------------------------------------------

def getNumberMembers(strippedPlayers):
    '''Takes a dictionary of the form returned by stripPlayerDictionary() and 
    returns the number of group members that took part in that match.'''
    
    # record the total number of members in the dictionary, including both teams
    return len(strippedPlayers['radiant']) + len(strippedPlayers['dire'])

#-------------------------------------------------------------------------------

def getOutcome(strippedPlayers, winningTeam):
    '''Takes a dictionary of the form returned by stripPlayerDictionary() and 
    returns 'Win' or 'Loss' depending on which team our members were on.'''
    
    # If the winning team had members on it, record a win.
    if (winningTeam == 'Radiant') and (len(strippedPlayers['radiant']) > 0):
        return 'Win'
    elif (winningTeam == 'Dire') and (len(strippedPlayers['dire']) > 0):
        return 'Win'
    
    # Otherwise, record a loss.
    else:
        return 'Loss'
    
#-------------------------------------------------------------------------------

def getHeroPlayed(strippedPlayers, dotabuffID):
    '''Takes a dictionary of the form returned by stripPlayerDictionary() and
    a Dotabuff player ID number.  Returns the name of the hero played by that
    player as recorded in the stripped dictionary.'''
    
    for team in strippedPlayers:
        for (player, hero) in strippedPlayers[team]:
            if (player == dotabuffID):
                if (hero == ''):
                    raise Exception('No hero detected')
                else:
                    return hero

#-------------------------------------------------------------------------------