import requests
import MySQLdb
import MySQLdb.cursors

#-------------------------------------------------------------------------------

def updateFacebookInfo(db, member):
    '''Takes a database connection dictionary and a member dictionary of the
    form gotten by taking a single result from a SELECT * query on the table
    `justpeople` using the MySQLdb dictionary cursor option.  If the gotten
    Facebook name is valid, updates the main name and the backup name for that
    member.  If the gotten Facebook name is invalid, the backup name is used.'''
    
    print 'Opening connection to database %s...' % (db['name'],),
    database = MySQLdb.connect(host = db['hostname'],
                               user = db['username'],
                               passwd = db['password'],
                               db = db['name'],
                               cursorclass = MySQLdb.cursors.DictCursor)
    sql = ''
    cursor = database.cursor()
    print 'completed.'
    
    print 'Get %s\'s Facebook ID number from table `facebook`...' % (member['fullname'],),
    sql = '''SELECT `facebookid`
             FROM `facebook`
             WHERE `personforeignkey`=%s
          ''' % (member['personkey'],)
    cursor.execute(sql)
    facebookid = cursor.fetchone()['facebookid']
    print 'completed.'
    
    print 'Get %s\'s current Facebook name from Facebook.com...' % (member['fullname'],),
    facebookName = getFacebookName(facebookid)
    print 'completed.'
    
    # If the Facebook name is blank because the user disabled their account:
    if facebookName == '':
        print '%s\'s retrieved current Facebook name is invalid.' % (member['fullname'],)
        
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

def getFacebookName(fbID):
    '''Takes a Facebook ID number.  Returns the name displayed on that account 
    in the form "firstname lastname".'''
    
    fbStub = 'https://graph.facebook.com/'
    fbData = requests.get(fbStub + str(fbID)).json()
    return (fbData['first_name'] + ' ' + fbData['last_name'])