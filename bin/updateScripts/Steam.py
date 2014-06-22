import requests
#from StringIO import StringIO
import urllib
import MySQLdb
import MySQLdb.cursors

#-------------------------------------------------------------------------------

def updateSteamInfo(db, member):
    '''Takes a database connection dictionary and a member dictionary of the
    form gotten by taking a single result from a SELECT * query on the table
    `justpeople` using the MySQLdb dictionary cursor option.  Updates the
    Steam names associated with that member to their current form.'''
    
    print 'Opening connection to database %s...' % (db['name'],),
    database = MySQLdb.connect(host = db['hostname'],
                               user = db['username'],
                               passwd = db['password'],
                               db = db['name'],
                               cursorclass = MySQLdb.cursors.DictCursor)
    sql = ''
    cursor = database.cursor()
    print 'completed.'
    
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
    
        print 'Get %i\'s current Steam name...' % (steamID['steamid'],),
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
        
        # Update the Steam profile picture in images/steam/
        print 'Updating Steam profile picture...',
        getSteamPicture(steamID['steamid'])
        print 'completed.'
    
    # Commit changes
    print 'Saving changes to database...',
    database.commit()
    print 'completed.'
    
    # Close cursor and database
    print 'Closing connection to database...',
    cursor.close()
    database.close()
    print 'completed.'

#-------------------------------------------------------------------------------

def getSteamName(steamID):
    '''Takes a Steam ID number.  Returns the username of that account.'''
    
    steamAPIKey = '057B73388D02E4CC02F55D9B2EE04CD9'
    steamStub = 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0001/?key=%s&steamids=%s&format=JSON'
    steamData = requests.get(steamStub % (steamAPIKey, str(steamID))).json()
    return steamData['response']['players']['player'][0]['personaname']

#-------------------------------------------------------------------------------

def getSteamPicture(steamID):
    '''Takes a Steam ID number.  Copies the smallest profile picture of that
    account to images/steam/.'''
    
    steamAPIKey = '057B73388D02E4CC02F55D9B2EE04CD9'
    steamStub = 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0001/?key=%s&steamids=%s&format=JSON'
    avatarName = '/home/content/99/9504599/html/images/steam/%i.jpg' % (steamID,)
    
    steamData = requests.get(steamStub % (steamAPIKey, str(steamID))).json()
    avatarURL = steamData['response']['players']['player'][0]['avatar']
    
    urllib.urlretrieve(avatarURL, avatarName)