## Calculer une estimation de la population en 2050
import pandas as pd 
import sqlite3
import math

connexion=sqlite3.connect('factbook.db')
a= pd.read_sql_query('SELECT * FROM facts;', con=connexion)

# dropna()
#N=N0*e**(rt)
#N=population finale
#N0=population initiale
#e= exponentielle
#r=taux de croissance annuelle
#t=nombre d'années entre l'estimation et l'initiale

def pop_growth(x):
    return x['population']*math.e **((x['population_growth']/100)*35)


a['pop_2050'] = a.apply(lambda row : pop_growth(row), axis=1)

a=a.dropna(axis=0)
a=a[(a['area_land']>0 & (a['population']>0))]

b= a.sort_values(['pop_2050'],ascending=[False])
b= b['name'].iloc[0:9]

print(b)

