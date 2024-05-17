import sqlalchemy
import pandas as pd
from config import *

sql_connect = f'postgresql+psycopg2://{USERNAME}:%s@{HOST}:{PORT}/{DBNAME}' %PASSWORD

# print(sql_connect)
conn = sqlalchemy.create_engine(sql_connect)

sql_query = '''
SELECT * FROM dblocal__replace_street, dblocal__street
WHERE dblocal__replace_street.id_street = dblocal__street.id
'''

df_new = pd.read_sql(sql_query, conn)
print(df_new)
