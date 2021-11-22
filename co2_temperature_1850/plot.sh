#! /bin/bash

if [ ! -f monthly_in_situ_co2_mlo.csv ]
then

wget https://scrippsco2.ucsd.edu/assets/data/atmospheric/stations/in_situ_co2/monthly/monthly_in_situ_co2_mlo.csv

fi


if [ ! -f law2006.txt ]
then

wget https://www.ncei.noaa.gov/pub/data/paleo/icecore/antarctica/law/law2006.txt

fi

if [ ! -f Land_and_Ocean_complete.txt ]
then

wget http://berkeleyearth.lbl.gov/auto/Global/Land_and_Ocean_complete.txt

fi


keeling=keeling.txt
awk --field-separator , '{if (NR > 57) {if($5 > 0) {print $4, $5}}}' monthly_in_situ_co2_mlo.csv > ${keeling}

law_dome=law_dome.txt
awk  '{if (NR > 183 && NR < 2188) {print $5, $6}}' law2006.txt > ${law_dome}

berkeley_month=berkeleymonthly.txt
awk  '{if (NR > 86 && $3 != "NaN") {if ($1 == "") {exit} else {print $1+($2-0.5)/12, $3}}}' Land_and_Ocean_complete.txt > ${berkeley_month}

berkeley_20=berkeley20.txt
awk  '{if (NR > 86 && $11 != "NaN") {if ($1 == "") {exit} else {print $1+($2-0.5)/12, $11}}}' Land_and_Ocean_complete.txt > ${berkeley_20}

# text options for the region name
size="14p"
fontname="Helvetica-Bold"
color="black"
#justification="+cBL" # the +c option plots relative to the corners of the map
justification="+cBR" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "



plot=co2_temprature.ps

# tc plot

xmin=1850
xmax=2020

width="20c"
height="8c"



# Temperature
ymin=-1
ymax=1.6

J_options="-JX${width}/${height}"

R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"




gmt psxy  ${berkeley_month}   -Wthin,black ${J_options} ${R_options}  -K  > ${plot}
gmt psxy  ${berkeley_20} -BWSen -Bya0.5f0.1+l"Global Temperature Amomaly (C)" -Bxa20f5+l"Year" -Wthickest,red ${J_options} ${R_options}  -K -O >> ${plot}



gmt pstext << END_TEXT -K -O -J -R ${text_options} -P -Gwhite -D-0.1/0.25 -N >> ${plot}
Berkeley Earth anomaly relative to 1950-1980 average (Rohde and Hausfather, 2020)
END_TEXT


justification="+jML" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "


gmt psxy << END_CAT -Wthin,black ${J_options} ${R_options}  -K  -O >> ${plot}
1855 1.3
1870 1.3
END_CAT

gmt psxy << END_CAT -Wthickest,red ${J_options} ${R_options}  -K  -O >> ${plot}
1855 1.1
1870 1.1
END_CAT

gmt pstext << END_TEXT -O -K -J -R ${text_options} -P -Gwhite -N >> ${plot}
1875 1.3 Monthly Temperature
1875 1.1 20 year average
END_TEXT

# CO2
ymin=270
ymax=450

J_options="-JX${width}/${height}"

R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"

justification="+jML" # alternatively, plots relative to the location given in the text file
text_angle="+a0"
text_options="-F+f${size},${fontname},${color} -F${justification} -F${text_angle} "


gmt psxy  ${keeling}  -Y${height} -W3p,blue ${J_options} ${R_options}  -K  -O >> ${plot}

gmt psxy << END_CAT -W3p,blue ${J_options} ${R_options}  -K  -O >> ${plot}
1855 410
1870 410
END_CAT

gmt psxy  ${law_dome} -BWsen  -Bya40f20+l"CO@-2@- (PPM)"  -W3p,green ${J_options} ${R_options}  -K -O >> ${plot}


gmt psxy << END_CAT -W3p,green ${J_options} ${R_options}  -K  -O >> ${plot}
1855 430
1870 430
END_CAT

gmt pstext << END_TEXT -O -J -R ${text_options} -P -Gwhite -N >> ${plot}
1875 430 Antarctica Law Dome CO@-2@- (Etheridge et al., 2010)
1875 410 Mauna Loa CO@-2@- (Keeling et al., 2001)
END_TEXT

gmt psconvert -Tf -A *.ps
gmt psconvert -Tg -A *.ps


