import pandas as pd
import numpy as np

import json
import concurrent

import time

import sqlite3

from fhelp import processDatesIT,findNearest
import concurrent

class ReqInfo: ##Could add API Key to this, not really necessary as a class (just eliminates a couple parameters and encapsula)
    '''Class to hold information about API ratelimit and related'''

    def __init__(self,rate_limit,offset,max_workers):
        '''Constructor'''

        self.RATE_LIMIT = rate_limit
        self.OFFSET = offset
        self.MAX_WORKERS = max_workers

    def getInfo(self):
        '''Returns RATE_LIMIT,OFFSET,MAX_WORKERS'''

        return (self.RATE_LIMIT,self.OFFSET,self.MAX_WORKERS)

def cleanDF(df,name):
    '''Clean dataframe– duplicates, index, date'''

    df = df.reset_index(drop=True)
    df = df.drop_duplicates()

    if 'date' in df.columns: #temporary fix for noisy date columns
        if len(df.date.apply(lambda x: type(x)).value_counts())>1:
            df = processDatesIT(df,name) #process dates
    return df

def getGeneralTable(apikey,name,url,offset,verbose=False):
    '''Get tables from non-parameterized(ticker-specific) URLS

    Parameters
    –––––––––
    apikey: str
        Financial Modeling Prep API key
    name: str
        Desired tablename
    url: str
        General FMP API URL
    _________

    '''

    url = url + apikey
    df = pd.read_json(url)
    time.sleep(offset)

    df = cleanDF(df,name)
    return df

def getTable(apikey,name,url,tickers,reqinfo,verbose=False):
    '''Pipeline function for diverting JSON and batch types'''

    batch = False

    if name[2] == 'b':
        batch = True
    if name[1] == '1':  #parameters, etc. are redundant
        table = getJSON1Tables(apikey,name,url,tickers,batch,reqinfo,verbose=verbose)
    elif name[1] == '2':
        table = getJSON2Tables(apikey,name,url,tickers,batch,reqinfo,verbose=verbose)
    elif name[1] == '3':
        table = getJSON3Tables(apikey,name,url,tickers,batch,reqinfo,verbose=verbose)

    return table


def getJSON1Tables(apikey,name,url,tickers,batch,reqinfo,verbose=False):
    '''Put unnested JSON from request into DataFrame'''

    addsymbol = False

    #check if symbol needs to be added(only for JSON1)
    if name in ['T1_INST_HOLDERS','T1_INST_MUTFUNDHOLDERS',
                'E1_INST_ETFHOLDERS','E1_INST_ETFSECTORWEIGHTS','E1_INST_ETFCOUNTRYWEIGHTS']:
        addsymbol = True

    if batch:#if URL allows batch requests, get batch size and determine iterations
        tickers = getSets(name,tickers)

    tempdf = getTableMT(apikey,name,url,tickers,reqinfo,addsymbol,verbose=verbose)

    return tempdf

def getJSON2Tables(apikey,name,url,tickers,batch,reqinfo,verbose=False):
    '''Get tables with 'JSON type 2'...'''
    tempdf = getTableMT(apikey,name,url,tickers,reqinfo,None,verbose=verbose)
    return tempdf

def getJSON3Tables(apikey,name,url,tickers,batch,reqinfo,verbose=False):
    '''Get tables with 'JSON type 3'...'''

    tickers = getSets(name,tickers)
    tempdf = getTableMT(apikey,name,url,tickers,reqinfo,None,verbose=verbose)

    return tempdf

def getSets(name,tickers):
    '''Create sets of tickers for batch requests'''

    BATCH_SIZE = int(name.split('_')[0][3:])
    ITERATIONS = int(np.ceil(len(tickers) / BATCH_SIZE))

    tickersets = [','.join(tickers[i*BATCH_SIZE:(i+1)*BATCH_SIZE]) for i in range(ITERATIONS)]

    return tickersets


def getRequestJ1(apikey,name,url,ticker,offset,verbose=False):
    '''Return partial dataframe for ticker, JSON type 1'''

    #create url
    final_url = url.replace(' ',ticker) + apikey
    table = None
    time.sleep(offset) ##avoid rate limit
    try:
        #return table
        table = pd.read_json(final_url)
    except Exception as e:
        print('Ticker {} FAILED: {}'.format(ticker,e))
        ###TODO: log for later addition

    #get json from req
    return table

def getRequestJ2(apikey,name,url,ticker,offset,verbose=False):
    '''Return partial dataframe for ticker'''

    time.sleep(offset)
    df = None
    #create valid URL
    final_url = url.replace(' ',ticker) + apikey
    try:
        jsonx = pd.read_json(final_url)
        symbname = jsonx.columns[0]

        df = pd.DataFrame(jsonx.iloc[0,1])
        df[symbname] = jsonx.loc[0,symbname]
    except Exception as e :
        print(e, '...ticker {} failed'.format(ticker))

    return df

def getRequestJ3(apikey,name,url,ticker,offset,verbose=False): #TODO: Find different JSON parsing action
    '''Return partial dataframe for ticker, JSON type 3'''

    #handle index syntax issue
    if name[0] == 'I':
        ticker = ticker.replace('^','%5E')
    #create url
    final_url = url.replace(' ',ticker) + apikey
    time.sleep(offset)
    df = None
    try:
        jsony = pd.read_json(final_url)
        #could use some nested functional programming here?
        if len(jsony) <= 3:
            for i in range(len(jsony)):
                jsonx = pd.DataFrame(jsony.iloc[i,0])
                symbname = jsonx.columns[0]
                df = jsonx.iloc[:,1].apply(lambda x: pd.Series(x)) ###long time – no choice due to json format
                df[symbname] = jsonx.loc[0,symbname]
                #tempdf = tempdf.append((df))
        else:
            symbname = jsony.columns[0]
            df = jsony.iloc[:,1].apply(lambda x: pd.Series(x)) ###even with apply, long action
            df[symbname] = jsony.loc[0,symbname]
            #tempdf = tempdf.append(df)

    except Exception as e :
        print(e, '....batch of {} failed'.format(len(ticker)))

    return df

def getTableMT(apikey,name,url,tickers,reqinfo,addsymbol,verbose=False):
    '''Multi-threaded API requests'''

    req_function = getRequestJ1
    if name[1] == '2':
        req_function = getRequestJ2
    elif name[1] == '3':
        req_function = getRequestJ3

    _,OFFSET,MAX_WORKERS = reqinfo.getInfo()
    tempdf = pd.DataFrame()

    with concurrent.futures.ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:

        #create future for each batch
        future_to_tickers = {executor.submit(req_function,apikey,name,url,ticker,OFFSET,verbose=True): ticker for ticker in tickers}

        for future in concurrent.futures.as_completed(future_to_tickers,timeout=None):
            ticker = future_to_tickers[future]
            try:
                tab = future.result()
            except Exception as e:
                print(ticker,'FAILED',e)

            else:
                if addsymbol:
                    tempdf['symbol'] = ticker
                tempdf = tempdf.append(tab)
    tempdf = cleanDF(tempdf,name)
    if verbose:
        print('_'.join(name.split('_')[1:]), 'SUCCESS')


    return tempdf
