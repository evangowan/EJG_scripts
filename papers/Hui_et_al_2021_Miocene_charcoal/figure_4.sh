#! /bin/bash


mkdir plots

font_label="--FONT_LABEL=10p --MAP_LABEL_OFFSET=6p"
font_anno="--FONT_ANNOT_PRIMARY=8p"

loess_line="2p"
dot_size="0.1"

plot="plots/figure_4.ps"




plot_width=2.5c
plot_height=-8c

width_add=2.7c

ymin=6
ymax=17

############## MCr total

parameter=Mcr_total

xmin=80
xmax=12000
axis_label="MC@-R@-"


J_options="-JX${plot_width}l/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"

dos2unix ${parameter}_1.csv

awk -F',' '{print $2, $1}' ${parameter}_1.csv > data.txt
awk -F',' '{print $3, $1}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print $4, $1}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print $5, $1}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt   -Y3c  ${J_options} ${R_options} -P -K  -Glightred   > ${plot}
psxy data.txt   -B0e ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BWsN -Bya2f1+l"Age (Ma)" -Bxa1f3p+l"${axis_label} (grain/g)"  ${J_options} ${R_options} -P -K -O -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}


pstext << END_CAT -R -JX -F+cTL+f8p -D0.1/-0.15 -P -K -O -Gwhite  >> ${plot}
(a)
END_CAT

############## MCl total

parameter=Mcl_total

xmin=14
xmax=5000
axis_label="MC@-L@-"


J_options="-JX${plot_width}l/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"

dos2unix ${parameter}_1.csv

awk -F',' '{print $2, $1}' ${parameter}_1.csv > data.txt
awk -F',' '{print $3, $1}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print $4, $1}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print $5, $1}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt   -X${width_add}   ${J_options} ${R_options} -P -K  -Glightred  -O >> ${plot}
psxy data.txt    ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BwseN -Bxa1f3p+l"${axis_label} (grain/g)"  ${J_options} ${R_options} -P -K -O -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}


pstext << END_CAT -R -JX -F+cTL+f8p -D0.1/-0.15 -P -K -O -Gwhite  >> ${plot}
(b)
END_CAT

############## MCl total

parameter=MC_total

xmin=80
xmax=12000
axis_label="MC@-Total@-"


J_options="-JX${plot_width}l/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"

dos2unix ${parameter}_1.csv

awk -F',' '{print $2, $1}' ${parameter}_1.csv > data.txt
awk -F',' '{print $3, $1}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print $4, $1}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print $5, $1}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt   -X${width_add}    ${J_options} ${R_options} -P -K  -Glightred  -O >> ${plot}
psxy data.txt   ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BewsN  -Bxa1f3p+l"${axis_label} (grain/g)"  ${J_options} ${R_options} -P -K -O -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}


pstext << END_CAT -R -JX -F+cTL+f8p -D0.1/-0.15 -P -K -O -Gwhite  >> ${plot}
(c)
END_CAT

############## C4

parameter="C4"
xmin=0
xmax=24.9
xtick=10
xsubtick=5
axis_label="C@-4@- (%)"

J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"

dos2unix ${parameter}_1.csv

awk -F',' '{print $2, -$1}' ${parameter}_1.csv > data.txt
awk -F',' '{print $3, -$1}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print $4, -$1}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print $5, -$1}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt -X${width_add}    ${J_options} ${R_options} -P  -K  -Glightred  -O >> ${plot}
psxy data.txt    ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BwseN  -Bxa${xtick}f${xsubtick}+l"${axis_label}"  ${J_options} ${R_options} -P -O -K -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}



pstext << END_CAT -R -JX -F+cTL+f8p -D0.1/-0.15 -P  -O -Gwhite  >> ${plot}
(d)
END_CAT



psconvert -Tf -A ${plot}

