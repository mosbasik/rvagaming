#!/usr/bin/python

import requests

import MySQLdb
import MySQLdb.cursors

# used to access the principal database
database = {}
database['hostname'] = 'teamroster.db.9504599.hostedresource.com'
database['username'] = 'teamroster'
database['password'] = 'j2i@GLc4'
database['name'] = 'teamroster'

#-------------------------------------------------------------------------------

def getFacebookName(fbID):
    '''Takes a Facebook ID number.  Returns the name displayed on that account 
    in the form "firstname lastname".'''
    
    fbStub = 'https://graph.facebook.com/'
    fbData = requests.get(fbStub + str(fbID)).json()
    return (fbData['first_name'] + ' ' + fbData['last_name'])

#-------------------------------------------------------------------------------

def getSteamName(steamID):
    '''Takes a Steam ID number.  Returns the username of that account.'''
    
    steamAPIKey = '057B73388D02E4CC02F55D9B2EE04CD9'
    steamStub = 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0001/?key=%s&steamids=%s&format=JSON'
    steamData = requests.get(steamStub % (steamAPIKey, str(steamID))).json()
    return steamData['response']['players']['player'][0]['personaname']

#-------------------------------------------------------------------------------

def updateNames(db):
    
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
    
    # Get a list of all group members.
    print "Fetching all members from database...",
    sql = 'SELECT * FROM `justpeople`'
    cursor.execute(sql)
    members = cursor.fetchall()
    print 'completed.'
    
    # Loop over all group members.
    for member in members:
        print ''
        print ''
        print 'Processing %s...' % (member['fullname'],)
        print '***************************************************'
        
        ##############################
        ## Facebook                 ##
        ##############################
        
        print 'Get %s\'s Facebook ID number...' % (member['fullname'],),
        sql = '''SELECT `facebookid`
                 FROM `facebook`
                 WHERE `personforeignkey`=%s
              ''' % (member['personkey'],)
        cursor.execute(sql)
        facebookID = cursor.fetchone()['facebookid']
        print 'completed.'
        
        print 'Get %s\'s Facebook name...' % (member['fullname'],),
        facebookName = getFacebookName(facebookID)
        print 'completed.'
        
        # If the Facebook name is blank because the user disabled their account:
        if facebookName == '':
            print '%s\'s retrieved Facebook name is invalid.' % (member['fullname'],)
            
            # Set the Facebook name to the name saved in the backup field.
            print 'Retrieving backup name:',
            facebookName = member['backupname']
            print facebookName
        
        # Otherwise the Facebook name must be valid:
        else:
            
            # So update the backup name to the new Facebook name.
            print 'Updating %s\'s backup name to current name...' % (member['fullname'],),
            sql = '''UPDATE `justpeople`
                     SET `backupname`="%s"
                     WHERE `personkey`="%s"
                  ''' % (facebookName, member['personkey'])
            cursor.execute(sql)
            print 'completed.'
        
        # Now that facebookName is known to be valid, update the main name.
        print 'Updating %s\'s main name to current name...' % (member['fullname'],),
        sql = '''UPDATE `justpeople`
                 SET `fullname`="%s"
                 WHERE `personkey`="%s"
              ''' % (facebookName, member['personkey'])
        cursor.execute(sql)
        print 'completed.'
        
        
        ##############################
        ## Steam                    ##
        ##############################
        
        print 'Get %s\'s Steam ID number(s)...' % (member['fullname'],),
        sql = '''SELECT `steamid`
                 FROM `steamdotabuff`
                 WHERE `personforeignkey`=%s
              ''' % (member['personkey'],)
        cursor.execute(sql)
        steamIDs = cursor.fetchall()
        print 'found: %s.' % (str([x['steamid'] for x in steamIDs]),)
        
        # Loop over all steam ids associated with this personkey
        for steamID in steamIDs:
        
            print 'Get %i\'s Steam name...' % (steamID['steamid'],),
            steamName = getSteamName(steamID['steamid'])
            print 'found: %s' % (steamName,)
            
            # Update the Steam name in the database.
            print 'Updating %i\'s Steam name to current "%s"...' % (steamID['steamid'], steamName),
            sql = '''UPDATE `steamdotabuff`
                     SET `steamname`="%s"
                     WHERE `steamid` = "%i"
                  ''' % (steamName, steamID['steamid'])
            cursor.execute(sql)
            print 'completed.'
    
    # Commit changes, close cursor and database
    print ''
    print ''
    print 'Saving changes to database...',
    database.commit()
    print 'completed.'
    
    print 'Closing connection to database %s...' % (db['name'],),
    cursor.close()
    database.close()
    print 'completed.'
    
#-------------------------------------------------------------------------------

updateNames(database)