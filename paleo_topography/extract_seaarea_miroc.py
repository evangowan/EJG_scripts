#!/usr/bin/python3

import sys
import netCDF4 as nc

input_file = sys.argv[1]

print(input_file)

netcdf_open = nc.Dataset(input_file)

latitude = netcdf_open.variables['lat']
longitude = netcdf_open.variables['lon']
sftof = netcdf_open['sftof']

f = open("temp/sftof.txt", "w")



for i in range(0,sftof.shape[0]):

	latitude_small = latitude[i]

	sftof_small = sftof[i][:]

	for j in range(0,sftof.shape[1]):

		lat_val = latitude_small
		lon_val = longitude[j]
		depth_val = sftof_small[j]
		
		f.write(str(lon_val) + ' ' + str(lat_val) + ' ' + str(depth_val) + '\n')


f.close()
