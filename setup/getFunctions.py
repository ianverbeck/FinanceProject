import pandas as pd
import numpy as np

import json
import concurrent

import time

import sqlite3

from fhelp import processDatesIT,findNearest

def cleanDF(df):
    df.reset_index(inplace=True,drop=True)
    df.drop_duplicates(inplace=True)

    if 'date' in df.columns: #temporary fix for noisy date columns
        if len(df.date.apply(lambda x: type(x)).value_counts())>1:
            df = process_datesIT(tempdf,name) #process dates
    return df

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
    _________

    '''

    url = url + apikey
    df = pd.read_json(url)

    df = cleanDF(df)
    return df

def getTable(apikey,name,url,tickers,verbose):
    '''Pipeline function for diverting JSON and batch types'''
    batch = False
    if name[2] == 'b':
        batch = True
    if name[1] == '1':
        table = getJSON1Tables(apikey,name,url,tickers,batch,verbose)
    elif name[1] == '2':
        table = getJSON2Tables(apikey,name,url,tickers,batch,verbose)
    elif name[1] == '3':
        table = getJSON3Tables(apikey,name,url,tickers,batch,verbose)



def getJSON1Tables(apikey,name,url,tickers,verbose=False):
    pass


def getJSON2Tables(apikey,name,url,tickers,verbose=False):
    pass


def getJSON3Tables(apikey,name,url,tickers,verbose=False):
    pass
