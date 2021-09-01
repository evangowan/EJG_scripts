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


for j in range(0,sftof.shape[0]):

	latitude_small = latitude[j][:]
	longitude_small = longitude[j][:]
	sftof_small = sftof[j][:]

	for i in range(0,sftof.shape[1]):

		lat_val = latitude_small[i]
		lon_val = longitude_small[i]

		depth_val = sftof_small[i]

		f.write(str(lon_val) + ' ' + str(lat_val) + ' ' + str(depth_val) + '\n')


f.close()
