#!/usr/bin/python

import urllib
from bs4 import BeautifulSoup
import MySQLdb
import MySQLdb.cursors
from getRecentMatchList import *
from getMatchInfo import *
import PlayerDictionary

# used to access the principal database
database = {}
database['hostname'] = 'teamroster.db.9504599.hostedresource.com'
database['username'] = 'teamroster'
database['password'] = 'j2i@GLc4'
database['name'] = 'teamroster'

def updateMatches(db, commitFlag=False):
    '''Takes a database access dictionary and an optional flag, set to False by
    default.  If the flag is set to False, no database changes will be commited;
    if the flag is set to True, all database changes will be committed.  Checks
    recently-played match lists of every member with a valid Dotabuff ID to see
    if there are any matches that have not been put in the database, and adds
    such matches to the database if any are found.'''
    
    # Connect to the database.  Create an SQL string to build queries and a
    # Cursor object to run them.
    print 'Opening connection to database %s...' % (db['name'],),
    database = MySQLdb.connect(host = db['hostname'],
                               user = db['username'],
                               passwd = db['password'],
                               db = db['name'],
                               cursorclass = MySQLdb.cursors.DictCursor)
    sql = ''
    cursor = database.cursor()
    print 'completed.'
    
    # Get list containing (as dictionaries) the Person Key & Dotabuff ID of each
    # PERSON in table PEOPLE.
    print "Fetching all members from database...",
    sql = 'SELECT `Full Name`, `Person Key`, `Dotabuff ID` FROM `people` WHERE `Dotabuff ID`<>""'
    cursor.execute(sql)
    people = cursor.fetchall()
    print 'completed.'
    
    # Begin looping over the list of people by member.
    for member in people:
        print ''
        print ''
        print 'Processing member %s...' % (member['Full Name'],)
        print '***************************************************'
        
        # Get a list of the member's seven most recently played Match IDs.
        print "Getting %s's 7 most recent matches... " % (member['Full Name'],),
        recentMatchList = getRecentMatchList(member['Dotabuff ID'])
        print 'completed.'
        
        # Begin looping over the list of recent matches by matchID
        for matchID in recentMatchList:
            print '--------------------------------'
            print 'Processing Match %i...' % (matchID,)
            
            # Run a query to see if table `peoplematchesheroes` already contains
            # the record for this person playing this match.
            print 'Running query: have we seen %s play match %i?...' % (member['Full Name'], matchID),
            sql = '''SELECT *
                     FROM `peoplematchesheroes`
                     WHERE `personforeignkey`=%i AND `matchforeignkey`=%i
                  ''' % (member['Person Key'], matchID)
            cursor.execute(sql)
            print 'completed.'
            
            # If that record is not found in `peoplematchesheroes` then:
            if not cursor.fetchone():
                print 'Record of %s playing in match %i not found.' % (member['Full Name'], matchID)
                
                # Run a query to see if the matchID in question has already been
                # entered into `matches`
                print 'Running query: has match %i ever been recorded?...' % (matchID,),
                sql = '''SELECT `id`
                         FROM `matches`
                         WHERE `id`=%i
                      ''' % (matchID,)
                cursor.execute(sql)
                print 'completed.'
                
                # If matchID is not found in `matches`:
                if not cursor.fetchone():
                    print 'Match %i has not been recorded yet.' % (matchID,)
                    
                    # then we must retrieve the game information
                    print 'Getting information about match %i...' % (matchID,),
                    matchInfo = getMatchInfo(db, matchID)
                    print 'completed.'
                    
                    # and store a new record for matchID in the table of all matches.
                    print 'Inserting information for match %i into database %s...' % (matchID, db['name']),
                    cursor.execute('''INSERT INTO `matches`(
                                          `numbermembers`, `outcome`, `skill`,
                                          `type`, `mode`, `region`, `duration`,
                                          `date`, `id`
                                    ) VALUES (
                                          '%s', '%s', '%s', '%s', '%s', '%s',
                                          '%s', '%s', '%i'
                                    )''' % (matchInfo['numbermembers'],
                                            matchInfo['outcome'],
                                            matchInfo['skill'],
                                            matchInfo['type'],
                                            matchInfo['mode'],
                                            matchInfo['region'],
                                            matchInfo['duration'],
                                            matchInfo['date'],
                                            matchInfo['id']))
                    print 'completed.'
                
                print 'Confirmed: a record of match %i exists in database %s.' % (matchID, db['name'])
                
                # Now that we are sure that there exists a record for this match
                # in `matches`, we iterate over all members in the match and
                # create a new record in `peoplematchesheroes` for each of them:
                
                for team in matchInfo['players']:
                    print 'Processing %s team...' % (team,)
                    
                    for (bro, hero) in matchInfo['players'][team]:
                        
                        # Sanity check:
                        if (hero == ''):
                            raise Exception('No hero found.')
                        
                        # Get person info:
                        broDict = [x for x in people if x['Dotabuff ID'] == bro][0]
                        
                        # Insert record to `peoplematchesheroes`:
                        print 'Inserting record of %s playing %s in match %i into table `peoplematchesheroes`...' % (broDict['Full Name'], hero, matchID),
                        cursor.execute('''INSERT INTO `peoplematchesheroes`(
                                              `matchforeignkey`,
                                              `personforeignkey`,
                                              `heroforeignkey`
                                          ) VALUES (
                                              '%s', '%s', '%s'
                                          )''' % (matchID, broDict["Person Key"], hero))
                        print 'completed'
                        
                    print '%s team processing complete.' % (team,)
                
            # Else a record for PERSON & MATCH was found - and by the way the
            # matches are parsed, we know that there are no more unparsed matches
            else:
                break
            
            print 'Finished processing match %i.' % (matchID,)
            
        print 'Finished processing %s.' % (member['Full Name'],)
        
    # close the cursor and database
    print 'closing connection to database %s...' % (db['name'],),
    cursor.close()
    database.close()
    print 'completed.'

#-------------------------------------------------------------------------------

updateMatches(database)