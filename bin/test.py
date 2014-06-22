#!/usr/bin/python

import urllib
from bs4 import BeautifulSoup
import MySQLdb
import MySQLdb.cursors
from getRecentMatchList import *
from getMatchInfo import getField
import PlayerDictionary

# used to access the principal database
database = {}
database['hostname'] = 'teamroster.db.9504599.hostedresource.com'
database['username'] = 'teamroster'
database['password'] = 'j2i@GLc4'
database['name'] = 'teamroster'

# test commands
def test1():
    matchList = getRecentMatchList(101867780)
    for match in matchList:
        print '\nMatch Id %s' % (match,)
        print '----------------------------'
        info = getMatchInfo(database, match)
        for record in info:
            print '%s = %s' % (record, info[record])

def test2():
    matchList = getRecentMatchList(101610409)
    print type(matchList)
    print type(matchList[0])
    print matchList

def test3():
    strippedPlayers = {'radiant':[('qwer', 123), ('tyui', 456), ('asdf', 789)], 'dire':[]}
    answer = PlayerDictionary.getHeroPlayed(strippedPlayers, 'tyui') 
    print answer

def test4():
    data = ({'fruit': 'orange', 'vegetable':'lettuce'},
            {'football':'arsenal', 'basketball':'lakers'},
            {'england':'london', 'france':'paris'})
    myKey = "basketball"
    myValue = "lakers"
    print [d for d in data if (myKey, myValue) in d.items()][0]
    
def test5():
    data = ({'fruit': 'orange', 'vegetable':'lettuce'},
            {'football':'arsenal', 'basketball':'lakers'},
            {'england':'london', 'france':'paris'})
    myKey = "basketball"
    myValue = "lakers"
    print (x for x in data if x.get(myKey) == myValue)

def test6():
    matchInfo = getMatchInfo(database, 283392255)
    for record in matchInfo:
        print '%s = %s' % (record, matchInfo[record])

def test7():
    stripped = PlayerDictionary.getStrippedPlayerDictionary(database, 326119875)
    for team in stripped:
        print "  %s:" % (team,)
        for (p, h) in stripped[team]:
            print "    %s playing %s" % (p, h)

def getMatchInfo(db, match):
    '''Takes database connection dictionary and a Dotabuff match ID number.
    Returns a dictionary of all the info pertaining to that match.'''
    
    # create BeautifulSoup object called "soup" from DotaBuff
    sock = urllib.urlopen('http://dotabuff.com/matches/' + repr(match))
    htmlSource = sock.read()
    sock.close()
    soup = BeautifulSoup(htmlSource)
    
    # initialize empty output dictionary, information list and player dictionary
    output = {}
    infolist = []
    players = {'radiant':[], 'dire':[]}
    
    ## save certain game attributes to infolist in order
    #for e in soup('dd'):
        #infolist.append(e.getText())

    ## start populating output dictionary
    output['type'] = getField(soup, 'Type')
    output['region'] = getField(soup, 'Region')
    output['duration'] = getField(soup, 'Duration')
    
    output['mode'] = getField(soup, 'Game Mode')
    #mode = getField(soup, 'Game Mode')
    #if (type(mode) == None):
    #    output['mode'] = 'Unknown'
    #else:
    #    output['mode'] = mode
    
    output['id'] = match
    output['date'] = soup.find('time')['datetime']
    
    # populate 'players' and 'numbermembers':
    players = PlayerDictionary.getMatchPlayersAndHeroes(match)  # non-anon match players
    players = PlayerDictionary.stripPlayerDictionary(db, players) # member match players
    output['players'] = players
    output['numbermembers'] = PlayerDictionary.getNumberMembers(players)
    
    # populate 'outcome'
    winningTeam = soup.find('div', {'class' : 'match-result'}).getText()[:-8]
    output['outcome'] = PlayerDictionary.getOutcome(players, winningTeam)
    
    # return result
    return output

print getMatchInfo(database, 49317233)