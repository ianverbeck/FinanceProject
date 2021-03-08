import sqlite3
import pandas as pd
from IPython.display import display, HTML, display_html

def getAllTables(path_to_db,show=False):
    '''Return dictionary of all tables. Only for smaller databases'''
    
    conn = sqlite3.connect(path_to_db)
    c = conn.cursor()
    
    tables = pd.read_sql('''
    select name 
    from sqlite_master 
    where type='table'
    ''',con=conn)
    
    all_tables = {}
    for i, table in enumerate(tables.name):
        t = pd.read_sql('''
        select * 
        from '''+ table,con=conn)

        if show:
            print('\n\n===='+table+'=====')
            t.info(show_counts=True)

            print('=================\n\n')
        all_tables.update({table:t})
        
    return all_tables

def getTable(path_to_db,tablename):
    '''Return specified table from specified database'''
    conn = sqlite3.connect(path_to_db)
    c = conn.cursor()
    
    table = pd.read_sql('select * from '+tablename,con=conn)
    return table

def getTableNames(path_to_db):
    '''Get table names from database'''
    conn = sqlite3.connect(path_to_db)
    c = conn.cursor()
    
    tables = pd.read_sql('''
    select name 
    from sqlite_master 
    where type='table'
    ''',con=conn)
    return tables

#https://html.developreference.com/article/15931330/Jupyter+notebook+display+two+pandas+tables+side+by+side
def displayM(dfs,names=[]):
    '''Display multiple dataframes
    
    Parameters
    ––––––––––
    dfs: list 
        List of dataframes to display
    names: list, default []
        List of labels for dataframes
    –––––––––
    '''
    html_str = ''
    if names:
        html_str += ('<tr>' +
        ''.join(f'<td style="text-align:center">{name}</td>' for name in names) +
        '</tr>')
    html_str += ('<tr>' + ''.join(f'<td style="vertical-align:top"> {df.to_html()}</td>' for df in dfs) +'</tr>') 
    html_str = f'<table>{html_str}</table>'
    html_str = html_str.replace('table','table style="display:inline"')
    display_html(html_str, raw=True)