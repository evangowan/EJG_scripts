#! /bin/bash

model_name="ICE-7G"
url="https://www.atmosp.physics.utoronto.ca/~peltier/data.php"
model_dir="model_files/"

# time in years from the command line
time=$1

# This takes ICE-7G and puts it onto a standard grid and file format that is used for the other scripts

# load resolution

source ../../resolution.sh


mkdir temp
mkdir grids

# gets the file name

filename=$( awk --field-separator='\t' -v time=${time} '{if ($1 == time) {print $2}}' times_files.txt)

# checks if the filename was found

if [ -z "$filename" ]; then
	echo "Time ${time} is not available for ${model_name}"
	exit 0
fi

# checks that the files exist
if [ ! -f "${model_dir}${filename}" ]; then
	echo "You must download ${model_name} files from ${url}"
	echo "error: missing ${filename}"
	exit 0
fi

# The ICE-xG files do not include shelves

time_index=$( echo ${time} | awk '{print $1/1000}' )


gmt grdsample ${model_dir}${filename}?Topo -T -Rg -I${resolution} -Gtemp/topography.nc


gmt grdsample ${model_dir}${filename}?stgit -T -Rg -I${resolution} -nn -Gtemp/ice_thickness.nc

gmt grdmath temp/topography.nc temp/ice_thickness.nc SUB = temp/subglacial.nc

mv temp/topography.nc grids/topography_${resolution}_${time}.nc
mv temp/ice_thickness.nc grids/ice_thickness_${resolution}_${time}.nc

mv temp/subglacial.nc grids/subglacial_${resolution}_${time}.nc

