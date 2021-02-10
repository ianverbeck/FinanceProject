import pandas as pd
import numpy as np
from urllib.request import urlopen  
import json

def fmp_todf(url,tickers):
    
    url_temp = url
    tempdf = pd.DataFrame()
    
    for ticker in tickers: 
        final_url = url_temp.replace('***TICKER***',ticker)
        dlist = get_json(final_url)
        for d in dlist:
            #setup df
            if len(tempdf.columns) == 0:
                tempdf = pd.DataFrame(columns = d.keys())

            #append date tuple
            app = pd.Series(data=[v for v in d.values()],index=d.keys(),name=ticker)
            tempdf = tempdf.append(app)

    #return tempdf
    return tempdf

def get_json(url):
    response = urlopen(url)
    data = response.read().decode("utf-8")
    return json.loads(data)