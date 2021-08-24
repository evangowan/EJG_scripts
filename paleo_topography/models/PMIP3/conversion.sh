#! /bin/bash

model_name="PMIP3"
url="https://wiki.lsce.ipsl.fr/pmip3/doku.php/pmip3:design:download#pmip3-cmip5_files_for_boundary_conditions"
model_dir="model_files/"

# time in years from the command line
time=$1

# This takes ICE-7G and puts it onto a standard grid and file format that is used for the other scripts

# for comparison with PaleoMIST, I am using 0.25 degrees
resolution=0.25


mkdir temp
mkdir grids

# gets the file name

time_check=$( awk --field-separator='\t' -v time=${time} '{if ($1 == time) {print $1}}' times_files.txt)

echo ${filename}
# checks if the filename was found

if [ -z "$time_check" ]; then
	echo "Time ${time} is not available for ${model_name}"
	exit 0
fi

orog_diff_file=${model_dir}pmip3_21k_orog_diff_v0.nc
land_sea_mask_file=${model_dir}pmip3_21k_sftlf_v0.nc
ice_sheet_mask_file=${model_dir}pmip3_21k_sftgif_v0.nc

# checks that the files exist
if [ ! -f "${orog_diff_file}" ]; then
	echo "You must download ${model_name} files from ${url}"
	echo "error: missing ${orog_diff_file}"
	exit 0
fi

if [ ! -f "${land_sea_mask_file}" ]; then
	echo "You must download ${model_name} files from ${url}"
	echo "error: missing ${land_sea_mask_file}"
	exit 0
fi

if [ ! -f "${ice_sheet_mask_file}" ]; then
	echo "You must download ${model_name} files from ${url}"
	echo "error: missing ${land_sea_mask_file}"
	exit 0
fi

# interpolate the files to the model resolution



gmt grd2xyz ${orog_diff_file}?orog_diff > temp/orog_dump.txt

gmt sphinterpolate temp/orog_dump.txt -I${resolution} -Rg -rp -Gtemp/orog_diff.nc

grd2xyz ${land_sea_mask_file}?sftlf > temp/land_mask_dump.txt

gmt nearneighbor  temp/land_mask_dump.txt -S1.5d -N4  -I${resolution} -Rg -rp -Gtemp/landsea_mask.nc


grd2xyz ${ice_sheet_mask_file}?sftgif  > temp/ice_mask_dump.txt

gmt nearneighbor  temp/ice_mask_dump.txt -S1.5d -N4  -I${resolution} -Rg -rp -Gtemp/icesheet_mask.nc



# Add the orography difference to the modern topography to get paleotopography

gmt grdmath ../../modern_topography/topography.nc temp/orog_diff.nc ADD = grids/topography_${time}.nc


