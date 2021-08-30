#! /bin/bash

model1=$1
model2=$2
time=$3

echo ${model1} ${model2} ${time}

model_dir="models"

mkdir temp
mkdir plots
mkdir plots/difference
mkdir plots/topography

source resolution.sh

if [ ! -f ${model_dir}/${model1}/grids/topography_${resolution}_${time}.nc ]
then
	cd ${model_dir}/${model1}
	bash conversion.sh ${time}
	cd ../..

fi

if [ ! -f ${model_dir}/${model2}/grids/topography_${resolution}_${time}.nc ]
then
	cd ${model_dir}/${model2}
	bash conversion.sh ${time}
	cd ../..

fi



max_range=200
interval=20
big_tick=100

offset_range=$(echo ${max_range} ${interval} | awk '{print $1 + $2/2}') 
gmt makecpt -Cpolar -T-${offset_range}/${offset_range}/${interval} > temp/shades.cpt

# find the difference between the model topography

gmt grdmath ${model_dir}/${model1}/grids/topography_${resolution}_${time}.nc ${model_dir}/${model2}/grids/topography_${resolution}_${time}.nc SUB = temp/diff_temp.nc

# mask greater values

gmt grdmath temp/diff_temp.nc -${max_range} LT  = temp/diff_high_mask.nc

# max smaller values

gmt grdmath temp/diff_temp.nc ${max_range} GT = temp/diff_low_mask.nc

# combine masks

gmt grdmath temp/diff_high_mask.nc temp/diff_low_mask.nc ADD 1 LT = temp_combine_mask.nc

gmt grdmath temp/diff_temp.nc temp_combine_mask.nc MUL temp/diff_high_mask.nc -${max_range} MUL ADD temp/diff_low_mask.nc ${max_range} MUL ADD  = temp/diff.nc


makecpt -Cetopo1 -G-11000/0 > temp/sea.cpt
makecpt -Cetopo1 -G0/8500 > temp/land.cpt

# create water and land grids

grdmath ${model_dir}/${model1}/grids/topography_${resolution}_${time}.nc 0 LT  ${model_dir}/${model1}/grids/topography_${resolution}_${time}.nc MUL   = temp/${model1}_sea_only.nc
grdmath ${model_dir}/${model2}/grids/topography_${resolution}_${time}.nc 0 LT  ${model_dir}/${model2}/grids/topography_${resolution}_${time}.nc MUL   = temp/${model2}_sea_only.nc

grdmath ${model_dir}/${model1}/grids/topography_${resolution}_${time}.nc 0 GE  0 NAN ${model_dir}/${model1}/grids/topography_${resolution}_${time}.nc MUL = temp/${model1}_land_only.nc
grdmath ${model_dir}/${model2}/grids/topography_${resolution}_${time}.nc 0 GE  0 NAN ${model_dir}/${model2}/grids/topography_${resolution}_${time}.nc MUL = temp/${model2}_land_only.nc


for region in Eurasia  Eastern_Asia North_America Antarctica global 
do

mkdir plots/topography/${region}

source regions/${region}/projection_info.sh

plot=plots/difference/${region}_${model1}-${model2}_${time}.ps

grdimage temp/diff.nc ${shift_up} ${shift_right}  ${R_options}  ${J_options} -K -P -Ctemp/shades.cpt -nn -Q -E200 > ${plot}

pscoast -Bafg -O -K ${R_options} ${J_options} -P -Wthin -Di -A5000 -Wthin,black >> ${plot}

# text options for the region name
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cTL" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "


pstext << END_TEXT -K -O  ${R_options} ${J_options} ${text_options} -P -Gwhite -D0.1/-0.2 -N >> ${plot}
${model1} - ${model2}
END_TEXT

# text options for the time
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cBL" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "

pstext << END_TEXT -K -O ${R_options} ${J_options} ${text_options} -P -Gwhite -D0.1/0.25 -N >> ${plot}
${time} yr BP
END_TEXT


psscale ${scale_x_shift} -Y-3.5 -Dx9c/2c/9c/0.5ch -P -O -Bx${big_tick}f${interval}+l"Topography Difference (m)" --FONT_LABEL=14p -Ctemp/shades.cpt   >> $plot

psconvert -Tf -A $plot


# plot topography

for model in ${model1} ${model2}
do

plot=plots/topography/${region}/${region}_paleo_topography_${model}_${time}.ps

grdimage temp/${model}_sea_only.nc ${shift_up} ${shift_right}  ${R_options}  ${J_options} -K -P -Ctemp/sea.cpt  -nn > ${plot}
grdimage temp/${model}_land_only.nc  ${R_options}  ${J_options} -O -K -P -Ctemp/land.cpt -nn -Q >> ${plot}

pscoast -Bafg -O -K ${R_options} ${J_options} -P -Wthin -Di -A5000 -Wthin,black >> ${plot}

# text options for the region name
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cTL" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "


pstext << END_TEXT -K -O  ${R_options} ${J_options} ${text_options} -P -Gwhite -D0.1/-0.2 -N >> ${plot}
${model}
END_TEXT

# text options for the time
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cBL" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "

pstext << END_TEXT -K -O ${R_options} ${J_options} ${text_options} -P -Gwhite -D0.1/0.25 -N >> ${plot}
${time} yr BP
END_TEXT


psscale ${scale_x_shift} -Y-3.5 -Dx9c/2c/9c/0.5ch -P -O -Bx2000f500+l"Land_surface elevation (m)" --FONT_LABEL=14p -Ctemp/land.cpt   >> $plot


psconvert -Tf -A $plot


done


done
