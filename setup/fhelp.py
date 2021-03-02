import pandas as pd
import numpy as np
from urllib.request import urlopen
import json
import datetime
import dateutil.relativedelta as relativedelta
import requests

def get_appended(url,apikey,name,tickers=None,verbose=False):
    '''Return dataframe data appended from batch api request'''

    json = name[1]
    batch = name[2]
    addsymbol = False

    url_temp = url
    tempdf = pd.DataFrame()
    if name in ['T1_INST_HOLDERS','T1_INST_MUTFUNDHOLDERS',
                'E1_INST_ETFHOLDERS','E1_INST_ETFSECTORWEIGHTS','E1_INST_ETFCOUNTRYWEIGHTS']:
        addsymbol = True

    if tickers:

        if batch == 'b':
            BATCH_SIZE = int(name.split('_')[0][3:])
            iterations = int(np.ceil(len(tickers) / BATCH_SIZE))
            if json == '1':     ###REFACTOR THIS TO IF INSIDE FOR
                for i in range(iterations):
                    start = i * BATCH_SIZE
                    stop = (i+1) * BATCH_SIZE
                    final_url = url_temp.replace(' ',','.join(tickers[start:stop])) + apikey
                    if verbose:
                        print('Running Batch: {}'.format(','.join(tickers[start:stop])))
                    try:
                        tempdf = tempdf.append(pd.read_json(final_url))
                    except Exception as e:
                        print(e, '....batch of {} failed'.format(BATCH_SIZE))
                        ###LOG FAILED BATCH REQUEST AND ADD TO QUEUE FOR LATER
            elif json == '3':
                for i in range(iterations):
                    start = i * BATCH_SIZE
                    stop = (i+1) * BATCH_SIZE
                    if name[0] == 'I':
                        ticks = [t.replace('^','%5E') for t in tickers[start:stop]]
                    else:
                        ticks = tickers[start:stop]
                    final_url = url_temp.replace(' ',','.join(ticks)) + apikey
                    try:

                        jsony = pd.read_json(final_url)
                        #could use some nested functional programming here to speed things up. will stay iterative for now due to small amount of actual iterations (max 3) and negligible (for my purposes) time added
                        if len(jsony) <= 3:
                            for i in range(len(jsony)):
                                jsonx = pd.DataFrame(jsony.iloc[i,0])
                                symbname = jsonx.columns[0]
                                df = jsonx.iloc[:,1].apply(lambda x: pd.Series(x))
                                df[symbname] = jsonx.loc[0,symbname]
                                tempdf = tempdf.append((df))
                        else:
                            symbname = jsony.columns[0]
                            df = jsony.iloc[:,1].apply(lambda x: pd.Series(x))
                            df[symbname] = jsony.loc[0,symbname]
                            tempdf = tempdf.append((df))
                    except Exception as e :
                        print(e, '....batch of {} failed'.format(BATCH_SIZE))
            else:
                raise Exception('JSON AND BATCH TYPE NOT COMPATIBLE')


        else:

            #iterate through tickers
            for ticker in tickers:
                if verbose:
                    print('Downloading for ticker '+ticker+'....')

                #create valid URL
                final_url = url_temp.replace(' ',ticker) + apikey
                try:

                    if json == '1':
                        df = pd.read_json(final_url)
                        if addsymbol:
                            df['symbol'] = ticker
                        tempdf = tempdf.append(df)

                    else:
                        jsonx = pd.read_json(final_url)
                        symbname = jsonx.columns[0]

                        if json == '2':
                            df = pd.DataFrame(jsonx.iloc[0,1])

                        elif json == '3':
                            df = jsonx.iloc[:,1].apply(lambda x: pd.Series(x))
                        else:
                            raise Exception('JSON format not understood], check url name for'+url)

                        df[symbname] = jsonx.loc[0,symbname]
                        tempdf = tempdf.append(df)

                except Exception as e:
                    print(e,' for ticker '+ticker+', continuing.....')
                    ###LOG FAILED REQUEST AND ADD TO QUEUE FOR LATER
    else: #general tables
        url = url + apikey
        ttdf = pd.read_json(url)
        tempdf = tempdf.append(ttdf)

    tempdf.reset_index(inplace=True,drop=True)
    tempdf.drop_duplicates(inplace=True)

    if 'date' in tempdf.columns: #temporary fix for noisy date columns
        if len(tempdf.date.apply(lambda x: type(x)).value_counts())>1:
            tempdf = process_datesIT(tempdf,name) #process dates

    return tempdf




def process_dates(tab2):
    """NOT WORKING – NOT ABLE TO ASSIGN SLICE OF DATAFRAME TO ARRAY, TRIED IT EVERY WHICH WAY––– RELUCTANTLY USE ITERATIVE VERSION"""

    strings = tab2[tab2.date.apply(lambda x: type(x)) == str]
    nodate = strings[strings.date.apply(lambda x: len(x))!= 10]
    date = strings[strings.date.apply(lambda x: len(x))== 10]

    #assign date columns to timestamp version
    tss = tab2.loc[date.index,'date'].apply(lambda x: pd.Timestamp(x))
    tab2.loc[date.index,'date'] = tss.values #note, this doesn't work no matter which way i try it.. values, no values, assign, apply, etc. switching to iterative..

    #assign nodate column to nearby date


def processDatesIT(df,tablename):
    """Reluctantly made function to preprocess dates iteratively"""
    timedelta = None
    ###THIS DOESN't ACCOUNT FOR MULTIPLE TEST CASES.
    if tablename[-3:] == 'DAY':
        timedelta = relativedelta.relativedelta(days=1)
    elif tablename[-3:] == 'QTR':
        timedelta = relativedelta.relativedelta(months=3)
    elif tablename[-3:] == '_YR':
        timedelta = relativedelta.relativedelta(years=1)

    #NOTE– these three lines are a quick fix, not robust @ all. Fine for my purposes now
    strings = df[df.date.apply(lambda x: type(x)) == str]
    nodate = strings[strings.date.apply(lambda x: len(x))< 10] #not acceptable date from API
    date = strings[strings.date.apply(lambda x: len(x))== 10] #date w/out time
    #convert
    for i in date.index:
        df.loc[i,'date'] = pd.Timestamp(df.loc[i,'date'])
    #impute
    for i in nodate.index:
        print(nodate.index)
        newdate = find_nearest(df,i,timedelta)
        df.loc[i,'date'] = pd.Timestamp(newdate)

    #df.date = df.date.astype(str)
    df.date = pd.to_datetime(df.date)
    return df

def findNearest(df,i,rdelta):
    "Find nearest xate and add/subtract delta to impute for missing dates"
    newdate = None
    if df.loc[i,'symbol'] == df.loc[i-1,'symbol']: #use previous date
        newdate = pd.Timestamp(df.loc[i-1,'date']) - rdelta ##the dates are sorted desc
    elif df.loc[i,'symbol'] == df.loc[i+1,'symbol']: #use next date
        newdate = pd.Timestamp(df.loc[i+1,'date']) + rdelta
    else: #assign empty timestamp value
        newdate = pd.Timestamp('01-01-0000 12:00:00')
    return newdate
