import pandas as pd
import numpy as np

import concurrent
import os

import time

import sqlite3

from fhelp import get_appended
from getFunctions import getGeneralTable, getTable, ReqInfo
from alive_progress import alive_bar
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
        
        #reqInfo
        rate_limit=10
        self.__reqinfo = ReqInfo(rate_limit,1,rate_limit-1)
    
        #public attributes
        self.tickerset = tickerset
        if db_name == 'default':
            db_name = self.tickerset +'Financials'
        self.db_name = db_name + '.db'
        self.url_path = url_path
        
        #db cursor & connection
        if os.path.exists(self.db_name):
            os.remove(self.db_name)
        self.__conn = sqlite3.connect(self.db_name)
        self.__c = self.__conn.cursor()
        
    def run(self,verbose=False): ####Eventually have 3 levels for verbose
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
        self.__getTickers()
        self.__getSpecific()
        
        
    def __getGeneral(self): ##should take implementation out and put in getFunctions
        '''Write tables for non-parameterized URLS to database'''
        
        if self.verbose: 
            print('Collecting General Data................')
            
        independents = self.urls[[name for name in self.urls.index if name[0] == 'G']] #get general urls
        
        #below code shaped heavily from python docs – https://docs.python.org/3/library/concurrent.futures.html
        with concurrent.futures.ThreadPoolExecutor(max_workers=self.__reqinfo.MAX_WORKERS) as executor:
            
            # create dict and assign future to it's (tablename, url) parameters
            future_to_url = {executor.submit(getGeneralTable,self.__apikey,pair[0],pair[1],self.__reqinfo.OFFSET): 
                             pair for pair in independents.iteritems()}
            
            for future in concurrent.futures.as_completed(future_to_url):
                pair = future_to_url[future]
                try:
                    table = future.result()
                    if len(table) == 0:
                        raise Exception('No table returned')
                except Exception as e:
                    print(pair[0],'FAILED:',e)

                else:
                    self.__executeSQL(pair[0],table)
                    
                    if self.verbose:
                        print(pair[0], 'SUCCESS')
                        
    def __executeSQL(self,name,table):
        tablename = '_'.join(name.split('_')[1:])
        self.__c.execute('drop table if exists '+ tablename)
        table.to_sql(tablename,con=self.__conn,index=False,if_exists='append')
    
    def __getTickers(self):
        '''Perform intermediate requests to define final tickersets for funds, sets, etc.''' \
        
        if self.verbose:
            print('Retrieving {}-specific tickerset(funds,ciks,indexes,etc)'.format(self.tickerset))
            
        #setup database
        stocks, indexes = self.__getStocksIndexes()
        etfs, commods = self.__getEtfsCommods(len(stocks))
        funds, inst, ciks = self.__getFundsInstCiks(stocks,etfs)
        
        #create dictionary of tickers for each URL type and return
        d = {'H':stocks + etfs + commods + funds,
             'P':stocks + etfs + funds,
             'T':stocks + etfs,
             'S':stocks,
             'E':etfs,
             'C':commods,
             'F':ciks,
             'I':indexes,
             'M':funds}
        
        self.__d = d
    
    ###Below functions should eventually be separated into individual ticker types###
    
    def __getStocksIndexes(self):
        """Pull stocks and indexes from database"""
        
        if self.verbose:
            print('Retrieving stocks and indices')
                
        tickertable = {'dow':'MI_DOWJLIST','ndaq100':'MI_NASDAQLIST','sp500':'MI_SP500LIST'}
        indextable = {'dow':['^IXIC','^GSPC','^DJI'],
                      'ndaq100':['^IXIC','^GSPC','^DJI','^VIX','^RUA'],
                      'sp500':['^IXIC','^GSPC','^DJI','^VIX','^RUA','^FTSE','^NDX','^N225','GDAXI']}
        stocks = list(pd.io.sql.read_sql('select symbol from '+tickertable.get(self.tickerset),con=self.__conn).symbol)
        indexes = indextable.get(self.tickerset)
        
        return (stocks, indexes)

    def __getEtfsCommods(self,num_stocks):
        '''Get Etfs and commodities'''
        
        if self.verbose:
                print('Retrieving etfs and commods')
        
        #pull etfs, sorted by volume & join
        etfs  = list(set(list(pd.io.sql.read_sql('select symbol from ETF_SYMBOLS;',con=self.__conn).symbol)).union \
            (list(pd.io.sql.read_sql('select symbol from CV_ETFS;',con=self.__conn).symbol)))
        tablename = 'P1b1000_CV_PROFILE'
        num_etfs = int(np.ceil(num_stocks/10))
        profile = getTable(self.__apikey,tablename,self.urls[tablename],etfs,self.__reqinfo,verbose=self.verbose)
        etfsub = list(profile[profile.country == 'US'].sort_values(by='volAvg',ascending=False).symbol[:num_etfs+1]) #note only us etfs
        
        #get commodities, ~proportionate to n_stocks
        commods = list(pd.io.sql.read_sql('select symbol from COM_SYMBOLS;',con=self.__conn).symbol)
        commodstable = {'dow':3,'ndaq100':5,'sp500':len(commods)}
        commodsub  = list(np.random.choice(commods,commodstable.get(self.tickerset)))
        
        return (etfsub, commodsub)
    
    def __getFundsInstCiks(self,stocks,etfs):
        """Get funds, institutional holders, and ciks from stock and ETF tickers"""
        
        if self.verbose:
                print('Retrieving funds, inst, and ciks')
        
        #get mutual funds data
        tablename = 'T1_INST_MUTFUNDHOLDERS'
        fundtable = getTable(self.__apikey,tablename,self.urls[tablename],stocks+etfs,self.__reqinfo,verbose=self.verbose)
        fundsub = list(fundtable.holder.value_counts().index)
        mfs = pd.io.sql.read_sql('select * from MF_SYMBOLS;',con=self.__conn)
        fundsub = list(np.random.choice(list(mfs[mfs.name.isin(fundsub)].symbol),int(np.ceil(len(stocks)/5)))) ##one fifth for now
        
        #get institutional holder data
        tablename = 'T1_INST_HOLDERS'
        instable = getTable(self.__apikey,tablename,self.urls[tablename],stocks+etfs,self.__reqinfo,verbose=self.verbose)
        instsub = list(instable.holder.value_counts().index)
        instsub = list(np.random.choice(instsub,len(stocks))) #account for many missing inst-cik mappings
        
        #retrieve ciks
        ciklist = pd.io.sql.read_sql('select * from INST_CIKLIST',con=self.__conn)
        ciksub = list(ciklist[ciklist.name.apply(lambda x: x.lower()).isin([i.lower() for i in instsub])].cik)
        ciksub = ['000'+str(c) for c in (ciksub)]
        ciksub = [c for c in ciksub if len(c)==10]
        
        return (fundsub, instsub, ciksub)
    
    def __getSpecific(self):
        '''Get final tables which are dependent on sets of tickers'''
        
        if self.verbose:
                print('Retrieving ticker-dependent data')
        
        dependents = self.urls[[name for name in self.urls.index if name[0] != 'G' and name[0] != 'U']] #get specifics
        #dependents = dependents.iloc[-3:] testing
        for name, url in dependents.iteritems():
            #if self.verbose: 
            #   print('_'.join(name.split('_')[1:])," processing...")
            table = getTable(self.__apikey,name,url,self.__d.get(name[0]),self.__reqinfo,verbose = self.verbose)
            self.__executeSQL(name,table)
            
            ###COULD THEORETICALLY WRITE TO HDFS(RATHER THAN SQL) OR OTHER DB HERE, w/ MAPPED KEYS. 
            ###Distributed setup will require higher rate limit to be effective
        
        pass
        

        
        


