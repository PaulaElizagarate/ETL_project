

import pandas as pd
import numpy as np

def titulos_col(x):
    x.set_axis(["country", "year", "born", "male_born", "female_born", "birth_rate", "fertility_rate", "variation"], axis=1, inplace=True)

    
def numeros(x):
    x = x.str.replace(".","")
    x = pd.to_numeric(x)
    return(x)

#Para gestionar los porcentajes de mi DataFrame evitando que sean objects
def porcentajes (x):
    x = x.str.replace("‰","")
    x = x.str.replace("%","")
    x = x.str.replace(",",".")
    x = pd.to_numeric(x)
    return(x)

#Para pasar mis textos del Dataframe a minúsculas
def minusculas (x):
    x= [i.lower() for i in x]
    return(x)

#Para convertir mis objects en floats/integers (concreto de Air Pollution)
def tipo_numero(x):
    x.replace("-", "0", inplace= True)
    pd.to_numeric(x)
    return(x)