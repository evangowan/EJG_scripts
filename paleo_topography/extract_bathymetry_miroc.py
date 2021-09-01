#!/usr/bin/python3

import sys
import netCDF4 as nc

input_file = sys.argv[1]

print(input_file)

netcdf_open = nc.Dataset(input_file)

latitude = netcdf_open.variables['lat']
longitude = netcdf_open.variables['lon']
deptho = netcdf_open['deptho']


f = open("temp/bathymetry.txt", "w")




for i in range(0,deptho.shape[0]):

	latitude_small = latitude[i]
	deptho_small=deptho[i][:]

	for j in range(0,deptho.shape[1]):

		lat_val = latitude_small
		lon_val = longitude[j]
		if deptho_small[j] > 0:
			depth_val = -deptho_small[j]
		elif deptho_small[j] == 0:
			depth_val = float("nan")
		else:
			depth_val = deptho_small[j]
		
		f.write(str(lon_val) + ' ' + str(lat_val) + ' ' + str(depth_val) + '\n')


f.close()
