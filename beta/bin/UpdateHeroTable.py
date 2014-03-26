import requests
import time
import MySQLdb
import MySQLdb.cursors
from getHeroList import *

# used to access the principal database
database = {}
database['hostname'] = 'dota2api.db.9504599.hostedresource.com'
database['username'] = 'dota2api'
database['password'] = 'GC3lQrT@'
database['name'] = 'dota2api'

def updateHeroTable(db):
    '''Given a database connection dictionary, ensures that table of heroes is
    current.'''
    
    # Connect to the database.  Create an SQL string to build queries and a
    # Cursor object to run them.
    database = MySQLdb.connect(host = db['hostname'],
                               user = db['username'],
                               passwd = db['password'],
                               db = db['name'],
                               cursorclass = MySQLdb.cursors.DictCursor)
    sql = ''
    cursor = database.cursor()
    
    # base API URL for GetHeroes
    getHeroes = 'http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v0001/'
    # my API key
    apiKey = 'key=%s' % '057B73388D02E4CC02F55D9B2EE04CD9'
    # language the localized names will be given in
    language = 'language=%s' % 'english'
    
    time.sleep(1)
    heroDict = requests.get(url).json()
    
    
    
    #for hero in heroDict['result']['heroes']:
        #sql = 'SELECT * FROM heroes WHERE id = %s' % hero['id']
        #cursor.execute(sql)