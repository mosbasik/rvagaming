#!/usr/bin/python

import urllib
from bs4 import BeautifulSoup

def getRecentMatchList(player):
    '''Takes a DotaBuff player ID number.  Returns a list of the Match IDs of
    the seven matches listed on that player's front page.'''
    
    # create BeautifulSoup object called "soup" from DotaBuff
    sock = urllib.urlopen('http://dotabuff.com/players/%s/_matches' % (player,))
    htmlSource = sock.read()
    sock.close()
    soup = BeautifulSoup(htmlSource)
    
    # initialize empty output list
    output = []
    
    # for each match found, add an entry to the output list
    for id in soup('a', {'class' : 'matchid'}):
        output.append(int(id.getText()));
    
    # return the result
    return output