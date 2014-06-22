import requests
import time

def getEntireMatchHistory(steam32):
    '''Given a 32-bit Steam ID number, this method returns a list containing the
    match IDs of ALL matches ever played by this user.'''
    
    # base API URL for GetMatchHistory
    getMatchHistory = 'https://api.steampowered.com/IDOTA2Match_570/GetMatchHistory/V001/'
    # my API key
    apiKey = 'key=%s' % '057B73388D02E4CC02F55D9B2EE04CD9'
    # number of match IDs requested by this call
    count = 'matches_requested=%s' % 100
    # Steam 32-bit ID of the player we're interested in
    account = 'account_id=%s' % steam32
    # no matches after this one will be returned
    startAt = 'start_at_match_id='
    
    # get the single most recent match played by this user
    count = 'matches_requested=%s' % 1
    url = '%s?%s&%s&%s' % (getMatchHistory, apiKey, account, count)
    data_raw = requests.get(url)
    data_json = data_raw.json()
    startAt = data_json['result']['matches'][0]['match_id']
    
    results = []
    count = 'matches_requested=%s' % 100
    while (startAt != -1):
        
        startAt = 'start_at_match_id=%s' % startAt
        url = '%s?%s&%s&%s&%s' % (getMatchHistory, apiKey, account, count, startAt)
        time.sleep(1)
        data_raw = requests.get(url)
        data_json = data_raw.json()
        lastIndex = -1
        
        #print 'new page of results'#############################################
        #print 'results remaining: %s' % data_json['result']['results_remaining']
        
        for match in data_json['result']['matches']:
            lastIndex += 1
            #print 'index = %s' % lastIndex######################################
            #print data_json['result']['matches'][lastIndex]['match_id']#########
            results.append(data_json['result']['matches'][lastIndex]['match_id'])
        
        if (data_json['result']['results_remaining'] > 0):
            startAt = data_json['result']['matches'][lastIndex]['match_id']
        else:
            startAt = -1
        
    #print 'len of raw results = %i' % len(results)##############################
    results = list(set(results))
    results.sort(reverse=True)
    
    #print 'len of shrunk/sorted results = %i' % len(results)####################
    return results


def getShortMatchHistory(steam32, num):
    '''Given a 32-bit Steam ID number, this method returns a list containing the
    IDs of the last <num> matches played by this user, as long as <num> is
    no greater than 100.'''
    
    assert(num <= 100)
    
    # base API URL for GetMatchHistory
    getMatchHistory = 'https://api.steampowered.com/IDOTA2Match_570/GetMatchHistory/V001/'
    # my API key
    apiKey = 'key=%s' % '057B73388D02E4CC02F55D9B2EE04CD9'
    # number of match IDs requested by this call
    count = 'matches_requested=%s' % num
    # Steam 32-bit ID of the player we're interested in
    account = 'account_id=%s' % steam32
    
    url = '%s?%s&%s&%s' % (getMatchHistory, apiKey, count, account)
    time.sleep(1)
    data_raw = requests.get(url)
    data_json = data_raw.json()
    
    results = []
    for i, match in enumerate(data_json['result']['matches']):
        results.append(data_json['result']['matches'][i-1]['match_id'])
    
    return results