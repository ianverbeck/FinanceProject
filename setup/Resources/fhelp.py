import pandas as pd
import numpy as np
from urllib.request import urlopen  
import json

def get_appended(url,tickers,apikey,symbol_seperate=False,verbose=False):
    '''Return dataframe with tickers' data appended''' 
    url_temp = url
    tempdf = pd.DataFrame()
    #iterate through ticker
    for ticker in tickers:
        if verbose:
            print('Downloading for ticker '+ticker+'....')
        
        #create valid URL
        final_url = url_temp.replace(' ',ticker) + apikey
        try:
            if symbol_seperate: #if response is in form [str, dict]
                addsymbol = pd.read_json(json.dumps(pd.read_json(final_url).iloc[0,1]))
                addsymbol['symbol'] = ticker
                tempdf = tempdf.append(addsymbol)    
            else:
                tempdf = tempdf.append(pd.read_json(final_url))
        except Exception as e:
            print(e,' for ticker '+ticker+', continuing.....')
            
    return tempdf
        
    
def get_appended2(url,tickers,apikey,symbol_seperate=False,verbose=False):
    '''Return dataframe with tickers' data appended''' 
    url_temp = url
    tempdf = pd.DataFrame()
    #iterate through ticker
    for ticker in tickers:
        if verbose:
            print('Downloading for ticker '+ticker+'....')
        
        #create valid URL
        final_url = url_temp.replace(' ',ticker) + apikey
        try:

            ttdf = pd.read_json(final_url)
            tickname = ticker
            #handle differnt json variations from the API
            if ttdf.shape[1] == 2:
                if ttdf.shape[0] == 1: # if one large 
                    tickname =  ttdf.iloc[0,0] #assignsymbol
                    ttdf = pd.read_json(json.dumps(pd.read_json(final_url).iloc[0,1]))
                else: #if list of dictionary values
                    tickname = ttdf.iloc[0,0] #assignsymbol
                    ttdf = ttdf.iloc[:,1].apply(lambda h: pd.Series(h))
            #add symbol column if none
            if 'symbol' not in ttdf.columns:
                if verbose:
                    print('NAMER-------------')
                ttdf['symbol'] = tickname
            if verbose:
                display(ttdf)
            tempdf = tempdf.append(ttdf)
        except Exception as e:
            print(e,' for ticker '+ticker+', continuing.....')
            
    return tempdf
        