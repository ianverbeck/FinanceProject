import pandas as pd
import numpy as np

import concurrent

import time

import sqlite3

from fhelp import get_appended
from getFunctions import getGeneralTables

class FMPGet:
    
    def __init__(self,apikey,tickerset='dow',db_name='default',url_path = 'Resources/urls.json'):
        '''Constructor for FMPGet object.
        
        Parameters
        ––––––––––
        apikey: str
            Financial Modeling Prep API key
        
        tickerset: str, default 'dow'
            Set of tickers to run program for... {'sp500','ndaq100','dow'}
        
        db_name: str, default 'dowFinancials'/'sp500Financials'/'ndaq100Financials'
            Desired name for database being created in current folder
            
        url_path: str, default 'Resources/urls.json'
            Path to json file with TABLENAME:URL Mappings
        ––––––––––
        
        '''
        #private attributes
        self.__apikey = apikey
        self.__RATE_LIMIT = 10
        self.__OFFSET = 1/self.__RATE_LIMIT 
        self.__MAX_WORKERS = self.__RATE_LIMIT - 2
    
        #public attributes
        self.tickerset = tickerset
        if db_name == 'default':
            db_name = self.tickerset +'Financials'
        self.db_name = db_name + '.db'
        self.url_path = url_path
        
        #db cursor & connection
        self.__conn = sqlite3.connect(self.db_name)
        self.__c = self.__conn.cursor()
        
    def run(self,verbose=False):
        '''Build database from FMP API
        
        Parameters
        ––––––––––
        verbose: bool
            Updates printed to stdout
        ––––––––––
        
        '''
        self.verbose = verbose
        self.urls = pd.read_json(self.url_path,typ = 'series')
        self.__getGeneral() ##TO DO: Add extra output for verbose. Not priority now
        d = self.__getTickers()
        self.__getSpecific(d)
        
        
    def __getGeneral(self):
        '''Write tables for non-parameterized URLS to database'''
        
        if self.verbose:
            print('Collecting General Data................')
            
        independents = self.urls[[name for name in self.urls.index if name[0] == 'G']] #get general urls
        
        #below code shaped heavily from python docs – https://docs.python.org/3/library/concurrent.futures.html
        with concurrent.futures.ThreadPoolExecutor(max_workers=self.__MAX_WORKERS) as executor:
            
            # create dict and assign future to it's (tablename, url) parameters
            future_to_url = {executor.submit(getGeneralTables,self.__apikey,pair[0],pair[1]): 
                             pair for pair in independents.iteritems()}
            
            for future in concurrent.futures.as_completed(future_to_url):
                time.sleep(self.__OFFSET) #wait to avoid rate limit
                pair = future_to_url[future]
                try:
                    tab = future.result()
                    if len(tab) == 0:
                        raise Exception('No table returned')
                except Exception as e:
                    print(pair[0],'FAILED:',e)

                else:
                    self.__c.execute('drop table if exists '+ pair[0])
                    tab.to_sql(pair[0],con=self.__conn,index=False,if_exists='append')
                    if self.verbose:
                        print(pair[0], 'SUCCESS')
    
    def __getTickers(self):
        '''Perform intermediate requests to define final tickersets for funds, sets, etc.''' 
        if self.verbose:
            print('Retrieving {}-specific tickerset(funds,ciks,indexes,etc)'.format(self.tickerset))
        #setup database

        #pull stocks and related indexes from database
        tickertable = {'dow':'G1_MI_DOWLIST','ndaq100':'G1_MI_NASDAQLIST','sp500':'G1_MI_SP500LIST'}
        indextable = {'dow':['^IXIC','^GSPC','^DJI'],
                      'ndaq100':['^IXIC','^GSPC','^DJI','^VIX','^RUA'],
                      'sp500':['^IXIC','^GSPC','^DJI','^VIX','^RUA','^FTSE','^NDX','^N225','GDAXI']}
        stocks = list(pd.io.sql.read_sql('select symbol from '+tickertable(tickerset),con=self.__conn).symbol)
        
        #pull etfs & join
        etfs  = set(list(pd.io.sql.read_sql('select symbol from G1_ETF_SYMBOLS;',con=self.__conn).symbol)).join \
            (list(pd.io.sql.read_sql('select symbol from G1_CV_ETFS;',con=conn).symbol))
        
        
        
        
        
            
            
        
        self.d = d
    
    def __getSpecific(self):
        '''Get final tables which are dependent on sets of tickers
        
        Parameter
        
        
        '''
        
        
        
        pass
        

