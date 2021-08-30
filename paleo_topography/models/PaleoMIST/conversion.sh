#! /bin/bash

model_name="PaleoMIST 1.0"
url="https://doi.pangaea.de/10.1594/PANGAEA.905800"
model_dir="model_files/"

# time in years from the command line
time=$1

# This takes ICE-7G and puts it onto a standard grid and file format that is used for the other scripts

# load resolution

source ../../resolution.sh


mkdir temp
mkdir grids



# gets the file name

filename=${model_dir}reconstruction_${resolution}_degree.nc

# checks if the filename was found



# checks that the files exist
if [ ! -f "${filename}" ]; then
	echo "You must download ${model_name} files from ${url}"
	echo "error: missing ${filename}"
	exit 0
fi

# check time

seq 80000 -2500 0  > temp/times.txt

time_index=$(awk -v time=${time} '{if ($1==time) {print NR-1}}' temp/times.txt )

if [ -z "$time_index" ]; then
	echo "Time ${time} is not available for ${model_name}"
	exit 0
fi

# The ICE-xG files do not include shelves




gmt grdsample ${filename}?paleo_topography[${time_index}] -T -Rg -I${resolution} -Ggrids/topography_${resolution}_${time}.nc

gmt grdsample ${filename}?ice_thickness[${time_index}] -T -Rg -I${resolution} -Ggrids/ice_thickness_${resolution}_${time}.nc

gmt grdsample ${filename}?base_topography[${time_index}] -T -Rg -I${resolution} -Ggrids/subglacial_${resolution}_${time}.nc




