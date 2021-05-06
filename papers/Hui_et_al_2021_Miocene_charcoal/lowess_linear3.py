#! /scratch/users/egowan-local/anaconda3/bin/python3

import csv

import numpy as np
import statsmodels.api as sm
import pandas as pd

from skmisc.loess import loess

#from tsmoothie.smoother import *
#from tsmoothie.utils_func import sim_randomwalk

#lowess = sm.nonparametric.lowess


#l_model = skmisc.loess.loess_model(1, family='gaussian', span=0.5, degree=2, normalize=True, parametric=False, drop_square=False)

fields = ["C4", "Charcoal_total", "Total_L_Total_R", "Yanwan_Grasses", "Yaodian_Grasses", "CO2"]
fields = ["C4", "Charcoal_total", "Total_L_Total_R", "Yanwan_Grasses", "Yaodian_Grasses", "CO2"]

for field in fields:

	filename= field + ".xlsx"
	data = pd.read_excel (filename, columns=['Age/Ma'])
	age_df = pd.DataFrame(data, columns=['Age/Ma'])
	age = np.concatenate(age_df.values)


#	if field == "CO2":
#	data_fraction = 1
#	else:
	data_fraction = 0.5


	data_values = np.concatenate(pd.DataFrame(data, columns=[field]).values)
#	z1 = smooth.NonParamRegression(age, data_values, method=npr_methods.LocalPolynomialKernel(q=1))

#	z1 = lowess(data_values, age, frac=data_fraction)

	l = loess(age,data_values, span=data_fraction, degree=1)
	l.fit()
	pred = l.predict(age, stderror=True)
	conf = pred.confidence(alpha=0.05)


	lowess = pred.values
	ll = conf.lower
	ul = conf.upper




	filename = field + "_1.csv"

	with open(filename, 'w', newline='') as csvfile:
		spamwriter = csv.writer(csvfile, delimiter=',',
		                      quotechar='|', quoting=csv.QUOTE_MINIMAL)

		counter=0
		for row in lowess:

			spamwriter.writerow([age[counter], data_values[counter], row, ll[counter], ul[counter]])

			counter += 1

