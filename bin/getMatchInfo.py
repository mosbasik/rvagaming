#!/usr/bin/python

import urllib
from bs4 import BeautifulSoup
import MySQLdb
import MySQLdb.cursors
import PlayerDictionary

#-------------------------------------------------------------------------------

def getField(soup, target):
    '''Takes a soup object of a Dotabuff match page and a string target
    Dotabuff match field name.  Returns the data contained in the target field
    on that match page.  If the target is not found, the string 'Unknown' is
    returned.'''
    
    # Test to ensure that a valid target was given
    if target not in ['Type', 'Game Mode', 'Region', 'Duration', 'Played']:
        raise Exception('Invalid target passed.')
    
    try:
        return soup.find(text=target).parent.parent.find('dd').getText()
    except AttributeError:
        return 'Unknown'

#-------------------------------------------------------------------------------

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
    
    output['type'] = getField(soup, 'Type')
    output['mode'] = getField(soup, 'Game Mode')
    output['region'] = getField(soup, 'Region')
    output['duration'] = getField(soup, 'Duration')
    
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

#-------------------------------------------------------------------------------