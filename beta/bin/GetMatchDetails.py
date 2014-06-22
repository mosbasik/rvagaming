import requests
import time

def getMatchDetails(matchid):
    '''Given a Dota 2 match ID, returns a dictionary containing all of the
    available information about that match.'''
    
    # base API URL for GetMatchHistory
    getMatchHistory = 'https://api.steampowered.com/IDOTA2Match_570/GetMatchDetails/V001/'
    # my API key
    apiKey = 'key=%s' % '057B73388D02E4CC02F55D9B2EE04CD9'
    # number of match IDs requested by this call
    match = 'match_id=%s' % matchid
    
    url = '%s?%s&%s' % (getMatchHistory, apiKey, match)
    time.sleep(1)
    data = requests.get(url).json()
    
    return data