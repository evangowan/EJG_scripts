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

for j in range(0,deptho.shape[0]):

	latitude_small = latitude[j][:]
	longitude_small = longitude[j][:]
	deptho_small = deptho[j][:]

	for i in range(0,deptho.shape[1]):

		lat_val = latitude_small[i]
		lon_val = longitude_small[i]
		if deptho_small[i] > 0:
			depth_val = -deptho_small[i]
		elif deptho_small[i] == 0:
			depth_val = float("nan")
		else:
			depth_val = deptho_small[i]
		
		f.write(str(lon_val) + ' ' + str(lat_val) + ' ' + str(depth_val) + '\n')


f.close()
