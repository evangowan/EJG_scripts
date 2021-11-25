#! /bin/bash


font_label="--FONT_LABEL=10p --MAP_LABEL_OFFSET=6p"
font_anno="--FONT_ANNOT_PRIMARY=8p"

loess_line="2p"
dot_size="0.1"

plot_width=8c
plot_height=4c


ymin=80
ymax=130

plot="cherry.ps"


parameter=Year-Date-LY

xmin=800
xmax=2050
axis_label="Gregorian Year"


J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"

dos2unix ${parameter}_1.csv


awk -F',' '{print  $1, $2}' ${parameter}_1.csv > data.txt
awk -F',' '{print $1, $3}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print  $1, $4}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print  $1, $5}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

gmt psxy uncertainty.txt   -Y3c  ${J_options} ${R_options} -P -K  -Gpink   > ${plot}
gmt psxy data.txt   -B0e ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
gmt psxy  lowess.txt  -BWSen -Bya10f5+l"Days since January 1" -Bxa200f100+l"${axis_label}"  ${J_options} ${R_options} -P -O -W${loess_line},red ${font_label} ${font_anno} >> ${plot}


gmt psconvert -Tf -A ${plot}