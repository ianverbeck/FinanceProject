import pandas as pd
import numpy as np

import json
import concurrent

import time

import sqlite3

from fhelp import get_appended

def getGeneralTables(apikey,name,url,verbose=False):
    '''Get tables from non-parameterized(ticker-specific) URLS
    
    Parameters
    –––––––––
    apikey: str
        Financial Modeling Prep API key
    name: str
        Desired tablename
    url: str
        General FMP API URL
        
    
    '''
    
    url = url + apikey
    df = pd.read_json(url)
        
    df = cleanDF(df)
    return df
        
def cleanDF(df):
    df.reset_index(inplace=True,drop=True)
    df.drop_duplicates(inplace=True)
    
    if 'date' in df.columns: #temporary fix for noisy date columns
        if len(df.date.apply(lambda x: type(x)).value_counts())>1:
            df = process_datesIT(tempdf,name) #process dates