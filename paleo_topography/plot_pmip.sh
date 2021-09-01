#! /bin/bash

mkdir temp

plot_folder="plots/pmip"

mkdir ${plot_folder}

for model in MIROC_PMIP3 MPI-ESM-P_PMIP3 CNRM-CM5_PMIP3
do

model_dir=models/${model}

ls models/${model}

source models/${model}/pmip.sh

plot_resolution="10000"

for region in Antarctica Eastern_Asia Eurasia North_America
do

source regions/${region}/projection_info.sh


width=8c

map_dims=$(mapproject -W ${J_options_nowidth}/${width} ${R_options} -Dc)


map_width=$(echo ${map_dims} | awk '{if($2 < 0) {height=-$2} else {height=$2}; if ($1 > height) {print $1} else { print $1/height * $1}}')

J_options="${J_options_nowidth}/${map_width}c"


gmt makecpt -Cetopo1 -G0/8500 > temp/land.cpt

gmt makecpt -Cvik  -T0/100/10 > temp/landsea.cpt

makecpt -Cetopo1 -G-11000/0 > temp/sea.cpt

gmt makecpt -Cvik  -T0/100/10 -I > temp/sealand.cpt

gmt mapproject << END    ${R_options} ${J_options} -F  > temp/corners.txt
${west_longitude} ${west_latitude}
${east_longitude} ${east_latitude}
END



r1=$(awk '{if (NR==1) print $1}'  temp/corners.txt)
r2=$(awk '{if (NR==2) print $1}' temp/corners.txt)
r3=$(awk '{if (NR==1) print $2}'  temp/corners.txt)
r4=$(awk '{if (NR==2) print $2}'  temp/corners.txt)

# round the numbers, should only need to do this for the top left corner, really


x_min_temp=$(printf '%.0f\n' $(echo "scale=2; ${r1} / ${plot_resolution}" | bc ) )
x_min=$(echo "${x_min_temp} * ${plot_resolution}" | bc)
y_min_temp=$(printf '%.0f\n' $(echo "scale=2; ${r3} / ${plot_resolution}" | bc ) )
y_min=$(echo "${y_min_temp} * ${plot_resolution}" | bc)

x_max_temp=$(printf '%.0f\n' $(echo "scale=2; ${r2} / ${plot_resolution}" | bc ) )
x_max=$(echo "${x_max_temp} * ${plot_resolution}" | bc)
y_max_temp=$(printf '%.0f\n' $(echo "scale=2; ${r4} / ${plot_resolution}" | bc ) )
y_max=$(echo "${y_max_temp} * ${plot_resolution}" | bc)

R_proj_optiions="-R${x_min}/${x_max}/${y_min}/${y_max}"
J_proj_options="-JX${map_width}/0"


for time_period in lgm  pi
do

##########################
# plot orography
##########################

file_var="${time_period}_orog"

gmt grdproject ${model_dir}/${!file_var}?orog -Gtemp/projected_grid.nc ${J_options} ${R_options} -D${plot_resolution} -F -nn+bg+t0 


gmt grdmath temp/projected_grid.nc 0 NAN =  temp/projected_grid_nosea.nc

plot=${plot_folder}/${model}_${region}_${time_period}.ps

x_position=2c
y_position=20c

grdimage temp/projected_grid_nosea.nc -Xa${x_position} -Ya${y_position}  ${R_proj_optiions}  ${J_proj_options} -K -P -Ctemp/land.cpt -Q -Ggray  > ${plot}

pscoast -Xa${x_position} -Ya${y_position} -Bafg -BSWne -O -K ${R_options} ${J_options} -P -Wthin -Di -A5000 -Wthin,black >> ${plot}

# text options for the region name
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cTL" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "


pstext << END_TEXT -Xa${x_position} -Ya${y_position} -K -O  ${R_options} ${J_options} ${text_options} -P -Gwhite -D0.1/-0.2 -N >> ${plot}
${model}
END_TEXT

# text options for the time
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cBR" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "

pstext << END_TEXT -Xa${x_position} -Ya${y_position} -K -O ${R_options} ${J_options} ${text_options} -P -Gwhite -D-0.1/0.25 -N >> ${plot}
Orography (${time_period^^})
END_TEXT



psscale -Xa${x_position} -Ya${y_position} -DJBC+w6c/0.5+h+o0/1.5c  ${R_options} ${J_options} -P -K -O -Bx2000f500+l"Land_surface elevation (m)" --FONT_LABEL=14p -Ctemp/land.cpt   >> $plot

##########################
# plot land area fraction
##########################

file_var="${time_period}_landarea"


#gmt grd2xyz ${model_dir}/${!file_var}?sftlf > temp/landarea.txt
#mapproject temp/landarea.txt ${J_options} ${R_options} -F > temp/landarea_proj.txt

#gmt nearneighbor temp/landarea_proj.txt  ${R_proj_optiions} -I${plot_resolution} -N4 -S500000 -Gtemp/projected_grid.nc 

#gmt sphinterpolate temp/landarea.txt -I0.1 -Rg -rp -Gtemp/orog_diff.nc

gmt grdproject ${model_dir}/${!file_var}?sftlf -Gtemp/projected_grid.nc ${J_options} ${R_options} -D${plot_resolution} -F -nn+bg

x_position=11c
y_position=20c

grdimage temp/projected_grid.nc -Xa${x_position} -Ya${y_position}  ${R_proj_optiions}  ${J_proj_options} -K -O -P -Ctemp/landsea.cpt -Q -Ggray  >> ${plot}

pscoast -Xa${x_position} -Ya${y_position} -Bafg -BSwne -O -K ${R_options} ${J_options} -P -Wthin -Di -A5000 -Wthin,black >> ${plot}

# text options for the region name
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cTL" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "


pstext << END_TEXT -Xa${x_position} -Ya${y_position} -K -O  ${R_options} ${J_options} ${text_options} -P -Gwhite -D0.1/-0.2 -N >> ${plot}
${model}
END_TEXT

# text options for the time
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cBR" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "

pstext << END_TEXT -Xa${x_position} -Ya${y_position} -K -O ${R_options} ${J_options} ${text_options} -P -Gwhite -D-0.1/0.25 -N >> ${plot}
Land Fraction (${time_period^^})
END_TEXT


#x_position=0c
#y_position=16c

psscale -Xa${x_position} -Ya${y_position} -DJBC+w6c/0.5+h+o0/1.5c  ${R_options} ${J_options} -P -K -O -Bx20f10+l"% land" --FONT_LABEL=14p -Ctemp/landsea.cpt   >> $plot

####################
# water depth
####################


file_var="${time_period}_waterdepth"


if [ "${model}" == "CNRM-CM5_PMIP3" -o "${model}" ==  "MPI-ESM-P_PMIP3" ]
then

	python3 extract_bathymetry.py  ${model_dir}/${!file_var}



elif [ "${model}" == "MIROC_PMIP3" ] 
then


	python3 extract_bathymetry_miroc.py  ${model_dir}/${!file_var}

fi

mapproject temp/bathymetry.txt ${R_options} ${J_options} -F > temp/bathymetry_proj.txt

nearneighbor temp/bathymetry_proj.txt -Gtemp/ocean_bathymetry.nc -I${plot_resolution} ${R_proj_optiions} -N4+m8 -S450000 



x_position=2c
y_position=6c

grdimage temp/ocean_bathymetry.nc -Xa${x_position} -Ya${y_position}  ${R_proj_optiions}  ${J_proj_options} -K -O -P -Ctemp/sea.cpt -Q -Ggray  >> ${plot}

pscoast -Xa${x_position} -Ya${y_position} -Bafg -BSWne -O -K ${R_options} ${J_options} -P -Wthin -Di -A5000 -Wthin,black >> ${plot}

# text options for the region name
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cTL" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "


pstext << END_TEXT -Xa${x_position} -Ya${y_position} -K -O  ${R_options} ${J_options} ${text_options} -P -Gwhite -D0.1/-0.2 -N >> ${plot}
${model}
END_TEXT

# text options for the time
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cBR" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "

pstext << END_TEXT -Xa${x_position} -Ya${y_position} -K -O ${R_options} ${J_options} ${text_options} -P -Gwhite -D-0.1/0.25 -N >> ${plot}
Baythmetry (${time_period^^})
END_TEXT



psscale -Xa${x_position} -Ya${y_position} -DJBC+w6c/0.5+h+o0/1.5c  ${R_options} ${J_options} -P -K -O -Bx2500f500+l"Depth below geoid (m)" --FONT_LABEL=14p -Ctemp/sea.cpt   >> $plot


####################
# water fraction
####################



file_var="${time_period}_seaarea"
rm temp/sftof_proj.txt temp/sftof.txt  temp/ocean_area.nc

if [ "${model}" == "CNRM-CM5_PMIP3" -o "${model}" ==  "MPI-ESM-P_PMIP3" ]
then

	python3 extract_seaarea.py  ${model_dir}/${!file_var}


elif [ "${model}" == "MIROC_PMIP3" ] 
then



	python3 extract_seaarea_miroc.py  ${model_dir}/${!file_var}
fi


mapproject temp/sftof.txt ${R_options} ${J_options} -F > temp/sftof_proj.txt

nearneighbor temp/sftof_proj.txt -Gtemp/ocean_area.nc -I${plot_resolution} ${R_proj_optiions} -N4+m8 -S450000 

x_position=11c
y_position=6c

grdimage temp/ocean_area.nc -Xa${x_position} -Ya${y_position}  ${R_proj_optiions}  ${J_proj_options} -K -O -P -Ctemp/sealand.cpt -Q -Ggray  >> ${plot}

pscoast -Xa${x_position} -Ya${y_position} -Bafg -BSwne -O -K ${R_options} ${J_options} -P -Wthin -Di -A5000 -Wthin,black >> ${plot}

# text options for the region name
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cTL" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "


pstext << END_TEXT -Xa${x_position} -Ya${y_position} -K -O  ${R_options} ${J_options} ${text_options} -P -Gwhite -D0.1/-0.2 -N >> ${plot}
${model}
END_TEXT

# text options for the time
size="12p"
fontname="Helvetica-Bold"
color="black"
justification="+cBR" # the +c option plots relative to the corners of the map
#justification="+jBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "

pstext << END_TEXT -Xa${x_position} -Ya${y_position} -K -O ${R_options} ${J_options} ${text_options} -P -Gwhite -D-0.1/0.25 -N >> ${plot}
Ocean Fraction (${time_period^^})
END_TEXT



psscale -Xa${x_position} -Ya${y_position} -DJBC+w6c/0.5+h+o0/1.5c  ${R_options} ${J_options} -P  -O -Bx20f10+l"% ocean" --FONT_LABEL=14p -Ctemp/sealand.cpt   >> $plot



done
done

done
