#! /scratch/users/egowan-local/anaconda3/bin/python3

import csv

import numpy as np
import statsmodels.api as sm
import pandas as pd

from skmisc.loess import loess

#from tsmoothie.smoother import *
#from tsmoothie.utils_func import sim_randomwalk

data = pd.read_excel (r'Micro-charcoal_data_edit.xlsx', columns=['Age/Ma'])
age_df = pd.DataFrame(data, columns=['Age/Ma'])
age = np.concatenate(age_df.values)

data_fraction = 0.5

fields = ["MC_(R_lt_50_um)", "MC _(R_50-100_um)", "MC_(R_gt_100_um)", "Mcr_total", "MC_(L_lt_50_um)", "MC_(L50-100_um)", "MC_(L_gt_100 um)", "Mcl_total", "MC_total"]

for field in fields:




	data_values = np.concatenate(pd.DataFrame(data, columns=[field]).values)


	l = loess(age,np.log10(data_values), span=data_fraction, degree=1)
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

			spamwriter.writerow([age[counter], data_values[counter], np.power(10,row), np.power(10,ll[counter]), np.power(10,ul[counter])])

			counter += 1

