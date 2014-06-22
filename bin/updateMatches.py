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
    sql = '''SELECT justpeople.fullname,
                    justpeople.personkey,
                    steamdotabuff.steamname,
                    steamdotabuff.dotabuffid
             FROM justpeople
             INNER JOIN steamdotabuff
             ON justpeople.personkey = steamdotabuff.personforeignkey
             WHERE steamdotabuff.dotabuffid <> 0
             ORDER BY justpeople.personkey ASC'''
    cursor.execute(sql)
    people = cursor.fetchall()
    print 'completed.'
    
    # Begin looping over the tuple of people by dictionary (member).
    for member in people:
        print ''
        print ''
        print 'Processing member %s (%s)...' % (member['steamname'], member['fullname'])
        print '***************************************************'
        
        # Get a list of the member's seven most recently played Match IDs.
        print "Getting %s's 7 most recent matches... " % (member['steamname'],),
        recentMatchList = getRecentMatchList(member['dotabuffid'])
        print 'completed.'
        
        # Begin looping over the list of recent matches by matchID
        for matchID in recentMatchList:
            print '--------------------------------'
            print 'Processing Match %i...' % (matchID,)
            
            # Run a query to see if table `peoplematchesheroes` already contains
            # the record for this person playing this match.
            print 'Running query: have we seen %s play match %i?...' % (member['steamname'], matchID),
            sql = '''SELECT *
                     FROM `peoplematchesheroes`
                     WHERE `personforeignkey`=%i AND `matchforeignkey`=%i
                  ''' % (member['personkey'], matchID)
            cursor.execute(sql)
            print 'completed.'
            
            # If that record is not found in `peoplematchesheroes` then we'll
            # need to check if we have ever seen the match before.
            if not cursor.fetchone():
                print 'Record of %s playing in match %i not found.' % (member['steamname'], matchID)
                
                # Run a query to see if table `matches` already contains the
                # record for this match.
                print 'Running query: have we seen match %i at all?...' % (matchID,),
                sql = '''SELECT *
                         FROM `matches`
                         WHERE id = %i
                      ''' % (matchID,)
                cursor.execute(sql)
                print 'completed.'
                
                # If that record is not found in 
                if not cursor.fetchone():
                    print 'Record of match %i not found.' % (matchID,)
                
                    # Retrieve the game information.
                    print 'Scraping information about match %i...' % (matchID,),
                    matchInfo = getMatchInfo(db, matchID)
                    print 'completed.'
                
                    # Store a new record this match in `matches`.
                    print 'Inserting match %i into table `matches`...' % (matchID,),
                    cursor.execute('''INSERT INTO `matches`(
                                          `numbermembers`, `outcome`, `type`,
                                          `mode`, `region`, `duration`, `date`, `id`
                                    ) VALUES (
                                          '%s', '%s', '%s', '%s', '%s', '%s',
                                          '%s', '%i'
                                    )''' % (matchInfo['numbermembers'],
                                            matchInfo['outcome'],
                                            matchInfo['type'],
                                            matchInfo['mode'],
                                            matchInfo['region'],
                                            matchInfo['duration'],
                                            matchInfo['date'],
                                            matchInfo['id']))
                    print 'completed.'
                
                # Now that we know there is a record for this match in `matches`,
                # all that we need in order to proceed is the Player Dictionary
                print 'Scraping player dictionary of match %i...' % (matchID,),
                playerDict = PlayerDictionary.getStrippedPlayerDictionary(database, matchID)
                print 'completed.'
                
                # iterate over all members in the match and create a new record
                # in `peoplematchesheroes` for each of them:
                for team in playerDict:
                    print 'Processing %s team...' % (team,)  # radiant or dire
                    
                    for (bro, hero) in playerDict[team]:
                        
                        # Sanity check to make sure there is a hero:
                        if (hero == ''):
                            raise Exception('No hero found.')
                        
                        # Get dictionary of all information we know about the bro:
                        broDict = [x for x in people if int(x['dotabuffid']) == int(bro)][0]
                        
                        # Run a query to see if table `peoplematchesheroes`
                        # already contains a record for this bro in this match
                        print 'Running query: have we seen %s play match %s already?...' % (broDict['steamname'], matchID),
                        sql = '''SELECT *
                                 FROM `peoplematchesheroes`
                                 WHERE `matchforeignkey` = %i
                                 AND `personforeignkey` = %i
                              ''' % (matchID, broDict['personkey'])
                        cursor.execute(sql)
                        print 'completed.'
                        
                        # If a record of that player playing in that match is
                        # not found, then insert a new record of it:
                        if not cursor.fetchone():
                            print 'No such record found.'
                            
                            # Insert record to `peoplematchesheroes`:
                            print 'Inserting record of %s playing %s in match %i into table `peoplematchesheroes`...' % (broDict['steamname'], hero, matchID),
                            cursor.execute('''INSERT INTO `peoplematchesheroes`(
                                                  `matchforeignkey`,
                                                  `personforeignkey`,
                                                  `heroforeignkey`
                                              ) VALUES (
                                                  '%s', '%s', '%s'
                                              )''' % (matchID, broDict["personkey"], hero))
                            print 'completed'
                        
                        # else a record of that player in that match already exists
                        else:
                            print 'Record found.'
                        
                    print 'Completed processing %s team.' % (team,)
                    
                print 'Finished processing match %i.' % (matchID,)
                
            # Else a record for PERSON & MATCH was found - and by the way the
            # matches are parsed, we know that there are no more unparsed matches
            else:
                print "Match %i has already been seen.  Unnecessary to examine %s's matches further." % (matchID, member['steamname'])
                break
            
        print 'Finished processing %s (%s).' % (member['steamname'], member['fullname'])
    
    # Commit the changes to the database if the commitFlag is correctly set
    print ''
    print ''
    #print 'Commit flag is set to %,' % (commitFlag,),
    if commitFlag:
        print 'saving database changes.'
        database.commit()
    else:
        print 'discarding database changes.'
    
    # Close the cursor and database
    print 'Closing connection to database %s...' % (db['name'],),
    cursor.close()
    database.close()
    print 'completed.'

#-------------------------------------------------------------------------------

updateMatches(database, True)