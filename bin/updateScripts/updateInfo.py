
import MySQLdb
import MySQLdb.cursors
import Facebook
import Steam

#-------------------------------------------------------------------------------

def updateInfo(db):
    ''''''
    
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
        
        Facebook.updateFacebookInfo(db, member)
        
        Steam.updateSteamInfo(db, member)

#-------------------------------------------------------------------------------

# used to access the principal database
database = {}
database['hostname'] = 'teamroster.db.9504599.hostedresource.com'
database['username'] = 'teamroster'
database['password'] = 'j2i@GLc4'
database['name'] = 'teamroster'

updateInfo(database)