#! /bin/bash


font_label="--FONT_LABEL=10p --MAP_LABEL_OFFSET=6p"
font_anno="--FONT_ANNOT_PRIMARY=8p"

line="2p"
dot_size="0.1"

plot_width=8c
plot_height=5c


xmin=1900
xmax=2040

plot="kumamoto.ps"


ymin=14
ymax=19
axis_label="Gregorian Year"

temperature_file=Kumamoto_annual.txt

J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"



awk -F'\t' '{if($1 < 2021) {print  $1, $2}}' ${temperature_file} > data.txt
awk -F'\t' '{if($1 < 2021) {print  $1, $3}}' ${temperature_file} > linear_all.txt
awk -F'\t' '{if($1 < 1970) {print  $1, $4}}' ${temperature_file} > linear_early.txt
awk -F'\t' '{if($1 > 1969) {print  $1, $5}}' ${temperature_file} > linear_late.txt


gmt psxy data.txt  -Y3c  -B0e ${J_options} ${R_options} -P -K -Sc${dot_size} -Gblack  > ${plot}

gmt psxy  linear_all.txt   ${J_options} ${R_options} -K -P -O -W${line},blue  >> ${plot}
gmt psxy  linear_early.txt    ${J_options} ${R_options} -K -P -O -W${line},green >> ${plot}
gmt psxy  linear_late.txt  -BWSen -Bya1f0.2+l"Annual average temperature (\260C)" -Bxa20f5+l"${axis_label}"  ${J_options} ${R_options} -K -P -O -W${line},red ${font_label} ${font_anno} >> ${plot}

xleft=1905
xright=1915

xtext=1918

yup=18.6

gmt psxy << END_cat ${J_options} ${R_options} -K -P -O -W${line},blue >> ${plot}
${xleft} ${yup}
${xright} ${yup}
END_cat

gmt pstext << END_cat ${J_options} ${R_options} -K -P -O -F+f7p,Helvetica,black+jLM >> ${plot}
${xtext} ${yup} overall trend: 0.20 \260C/decade
END_cat

yup=18.3

gmt psxy << END_cat ${J_options} ${R_options} -K -P -O -W${line},green >> ${plot}
${xleft} ${yup}
${xright} ${yup}
END_cat

gmt pstext << END_cat ${J_options} ${R_options} -K -P -O -F+f7p,Helvetica,black+jLM >> ${plot}
${xtext} ${yup} 1900-1970 trend: 0.13 \260C/decade
END_cat

yup=18.0

gmt psxy << END_cat ${J_options} ${R_options} -K -P -O -W${line},red >> ${plot}
${xleft} ${yup}
${xright} ${yup}
END_cat

gmt pstext << END_cat ${J_options} ${R_options}  -P -O -F+f7p,Helvetica,black+jLM >> ${plot}
${xtext} ${yup} 1970-2020 trend: 0.35 \260C/decade
END_cat


gmt psconvert -Tf -A ${plot}
