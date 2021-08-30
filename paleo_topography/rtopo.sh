# /bin/bash

# create modern topography



topo_dir="modern_topography"
mkdir ${topo_dir}

mkdir temp



# this is Rtopo 2.0.1

# I have this is a separate directory because the files are huge and I don't want multiple copies, but change the paths to where you have it
modern_bed_topography=~/topo/RTopo/RTopo-2.0.1_30sec_bedrock_topography.nc
modern_topography=~/topo/RTopo/RTopo-2.0.1_30sec_surface_elevation.nc
modern_ice_base=~/topo/RTopo/RTopo-2.0.1_30sec_ice_base_topography.nc

# Rtopo is not formatted correctly as a COARDS compliant netcdf file. This command fixes that. Only need to run this once.

if [ ! -e "temp/bed_topography.nc" ]
then
ncrename -O -d londim,x -d latdim,y -v lon,x -v lat,y ${modern_bed_topography} temp/bed_topography.nc

fi

if [ ! -e "temp/ice_base.nc" ]
then
ncrename -O -d londim,x -d latdim,y -v lon,x -v lat,y ${modern_ice_base} temp/ice_base.nc

fi


if [ ! -e "temp/topography.nc" ]
then
ncrename -O -d londim,x -d latdim,y -v lon,x -v lat,y ${modern_topography} temp/topography.nc
fi


# load resolution

source resolution.sh



# resample to grid resolution
gmt grdsample temp/bed_topography.nc -rp -Rg -I${resolution} -G${topo_dir}/bed_topography.nc
gmt grdsample temp/ice_base.nc -rp -Rg -I${resolution} -G${topo_dir}/ice_base.nc
gmt grdsample temp/topography.nc -rp -Rg -I${resolution} -G${topo_dir}/topography_shelves.nc


# for comparison with other models, I want to lob off the ice shelves


grdmask antarctica_margin.gmt -Rg -I${resolution} -rp -Gtemp/antarctic_mask.nc


gmt grdmath  temp/ice_base.nc temp/bed_topography.nc SUB ABS 0.1 LT = temp/shelf_mask.nc


gmt grdsample temp/shelf_mask.nc -rp -Rg -I${resolution} -nn -G${topo_dir}/shelf_mask_temp.nc

gmt grdmath temp/antarctic_mask.nc ${topo_dir}/shelf_mask_temp.nc ADD 0 GT = ${topo_dir}/shelf_mask.nc 

gmt grdmath ${topo_dir}/topography_shelves.nc ${topo_dir}/bed_topography.nc SUB ${topo_dir}/shelf_mask.nc MUL = ${topo_dir}/ice_thickness.nc

gmt grdmath ${topo_dir}/bed_topography.nc ${topo_dir}/ice_thickness.nc ADD = ${topo_dir}/topography.nc


