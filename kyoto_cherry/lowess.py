#! /opt/intel/oneapi/intelpython/latest/bin/python3

# data from here: http://atmenv.envi.osakafu-u.ac.jp/aono/kyophenotemp4/

#Full-flowering Dates of Prunus jamasakura in Kyoto City (Plain Text Version)
#(for 9th to 14th centuries: Aono and Saito, 2010; Int. J. Biometeorol.,54, 211-219)
#(for 15th to 21st centuries: Aono and Kazui, 2008; Int. J. Climatol., 28, 905-914)

import csv

import numpy as np
import statsmodels.api as sm
import pandas as pd

from skmisc.loess import loess


data = pd.read_excel (r'cherry.xlsx')
age_df = pd.DataFrame(data, columns=['Gregorian_year'])
age = np.concatenate(age_df.values)

data_fraction = 0.25

fields = ["Year-Date-LY"]

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

