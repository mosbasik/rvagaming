#!/usr/bin/python

import MySQLdb
import MySQLdb.cursors
from getHeroList import *

# used to access the principal database
database = {}
database['hostname'] = 'teamroster.db.9504599.hostedresource.com'
database['username'] = 'teamroster'
database['password'] = 'j2i@GLc4'
database['name'] = 'teamroster'

def updateHeroTable(db):
    ''''''
    
    # Connect to the database.  Create an SQL string to build queries and a
    # Cursor object to run them.
    database = MySQLdb.connect(host = db['hostname'],
                               user = db['username'],
                               passwd = db['password'],
                               db = db['name'],
                               cursorclass = MySQLdb.cursors.DictCursor)
    sql = ''
    cursor = database.cursor()
    
    # Get the current list of hero names.
    names = getHeroList()
    
    # Loop over the list name by name:
    for name in names:
        
        # Run query to see if `heroes` already contains a record for this hero.
        sql = "SELECT * FROM `heroes` WHERE `name`='%s'" % (name,)
        print sql
        cursor.execute(sql)
        
        # If a record for this hero does not exist:
        if not cursor.fetchone():
            
            print '    Match not found, creating new record:'
            
            # Prepare the image path from the name
            path = 'images/heroes/'
            path += name
            path = path.lower()    # convert to lowercase
            path.replace('\'', '') # remove apostrophes
            path.replace(' ', '_') # replace spaces with underscores
            
            
            # Run query to create a record for this hero
            sql = "INSERT INTO `heroes` (`name`, `path`) VALUES ('%s', '%s')" % (name, path)
            print '    ' + sql
            cursor.execute(sql)
        
        else:
            
            print '    Match found.  Updating path:'
            
            # Prepare the image path from the name
            path = 'images/heroes/'
            path += name
            path = path.lower()    # convert to lowercase
            path = path.replace(' ', '_') # replace spaces with underscores
            path += '_sb.png'
            
            # Run query to update record for this hero
            sql = "UPDATE `heroes` SET `path`='%s' WHERE `name`='%s'" % (path, name)
            print '    ' + sql
            cursor.execute(sql)

updateHeroTable(database)