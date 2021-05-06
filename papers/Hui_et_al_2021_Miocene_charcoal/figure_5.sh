#! /bin/bash


mkdir plots

font_label="--FONT_LABEL=10p --MAP_LABEL_OFFSET=6p"
font_anno="--FONT_ANNOT_PRIMARY=8p"

loess_line="2p"
dot_size="0.1"

plot="plots/figure_5.ps"




plot_width=8c
plot_height=2c

xmin=6
xmax=17

############## C4

parameter="C4"
ymin=0
ymax=24.9
ytick=10
ysubtick=5
axis_label="C@-4@- (%)"

J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"


awk -F',' '{print -$1, $2}' ${parameter}_1.csv > data.txt
awk -F',' '{print -$1, $3}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print -$1, $4}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print -$1, $5}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt -Y3c    ${J_options} ${R_options} -P  -K  -Glightred   > ${plot}
psxy data.txt    ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BWSen -Bxa2f1+l"Age (Ma)" -Bya${ytick}f${ysubtick}+l"${axis_label}"  ${J_options} ${R_options} -P -O -K -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}

pstext << END_CAT -R -JX -F+cTR+f8p -D-0.05/-0.05 -P -K -O -Gwhite -Wthinnest,black  >> ${plot}
Yanwan Section
END_CAT

pstext << END_CAT -R -JX -F+cBL+f8p -D0.1/0.15 -P -K -O -Gwhite  >> ${plot}
(a)
END_CAT




############## MC total

parameter=MC_total

ymin=80
ymax=12000
axis_label="MC@-T@-"


J_options="-JX${plot_width}/${plot_height}l"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"

awk -F',' '{print $1, $2}' ${parameter}_1.csv > data.txt
awk -F',' '{print $1, $3}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print $1, $4}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print $1, $5}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt -Y${plot_height}    ${J_options} ${R_options} -P -O  -K  -Glightred   >> ${plot}
psxy data.txt    ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BWsen -Bya1f3p+l"${axis_label} (grain/g)"  ${J_options} ${R_options} -P -K -O -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}

pstext << END_CAT -R -JX -F+cTR+f8p -D-0.05/-0.05 -P -K -O -Gwhite -Wthinnest,black  >> ${plot}
Yanwan Section
END_CAT

pstext << END_CAT -R -JX -F+cBL+f8p -D0.1/0.15 -P -K -O -Gwhite  >> ${plot}
(b)
END_CAT

############## MC_L / MC_R

parameter="Total_L_Total_R"

ymin=0.01
ymax=0.39
ytick=0.1
ysubtick=0.05
axis_label="MC@-L@-/MC@-R@-"


J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"


awk -F',' '{print -$1, $2}' ${parameter}_1.csv > data.txt
awk -F',' '{print -$1, $3}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print -$1, $4}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print -$1, $5}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt -Y${plot_height}    ${J_options} ${R_options} -P  -K -O -Glightred   >> ${plot}
psxy data.txt    ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BWsen  -Bya${ytick}f${ysubtick}+l"${axis_label}"  ${J_options} ${R_options} -P -O -K -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}

pstext << END_CAT -R -JX -F+cTR+f8p -D-0.05/-0.05 -P -K -O -Gwhite -Wthinnest,black  >> ${plot}
Yanwan Section
END_CAT

pstext << END_CAT -R -JX -F+cBL+f8p -D0.1/0.15 -P -K -O -Gwhite  >> ${plot}
(c)
END_CAT

############## Grasses Yanwan

parameter="Yanwan_Grasses" 

ymin=0.1
ymax=99.9
ytick=20
ysubtick=10
axis_label="Grass (%)"


J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"


awk -F',' '{print -$1, $2}' ${parameter}_1.csv > data.txt
awk -F',' '{print -$1, $3}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print -$1, $4}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print -$1, $5}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt -Y${plot_height}    ${J_options} ${R_options} -P  -K -O -Glightred   >> ${plot}
psxy data.txt    ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BWsen  -Bya${ytick}f${ysubtick}+l"${axis_label}"  ${J_options} ${R_options} -P -O -K -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}

pstext << END_CAT -R -JX -F+cTR+f8p -D-0.05/-0.05 -P -K -O -Gwhite -Wthinnest,black  >> ${plot}
Yanwan Section
END_CAT

pstext << END_CAT -R -JX -F+cBL+f8p -D0.1/0.15 -P -K -O -Gwhite  >> ${plot}
(d)
END_CAT

############## Grasses Yaodian

parameter="Yaodian_Grasses"

ymin=0.1
ymax=99.9
ytick=20
ysubtick=10
axis_label="Grass (%)"


J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"


awk -F',' '{print -$1, $2}' ${parameter}_1.csv > data.txt
awk -F',' '{print -$1, $3}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print -$1, $4}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print -$1, $5}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt -Y${plot_height}    ${J_options} ${R_options} -P  -K -O -Glightred   >> ${plot}
psxy data.txt    ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BWsen  -Bya${ytick}f${ysubtick}+l"${axis_label}"  ${J_options} ${R_options} -P -O -K -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}

pstext << END_CAT -R -JX -F+cTR+f8p -D-0.05/-0.05 -P -K -O -Gwhite -Wthinnest,black  >> ${plot}
Yaodian Section
END_CAT

pstext << END_CAT -R -JX -F+cBL+f8p -D0.1/0.15 -P -K -O -Gwhite  >> ${plot}
(e)
END_CAT

############## Mammal fossils


ymin=0
ymax=2
y_half=1
ytick=1
ysubtick=5
axis_label="Fossils"
parameter="mammal_fossils"

J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"


psxy grazers.txt   -Y${plot_height}    ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy browsers.txt -V    ${J_options} ${R_options} -P -O -K -St${dot_size} -Ggrey -Wblack >> ${plot}
psxy << END_CAT  -P -O -K ${J_options} ${R_options}   -W1p,black  >> ${plot}
${xmin} ${y_half}
${xmax} ${y_half}
END_CAT

pstext  << END_CAT -BWsen -Bxa100 -By+l"${axis_label}"   ${J_options} ${R_options}  -P -K -O -Wblack -F+f7p,Helvetica,black -F+jTR  ${font_label} ${font_anno} >> ${plot}
16.9 1.95 Grazers (Favour arid climate)
16.9 0.95 Browsers (Favour humid Climate)
END_CAT

pstext << END_CAT -R -JX -F+cBL+f8p -D0.1/0.15 -P -K -O -Gwhite  >> ${plot}
(f)
END_CAT

############## Mammal fossils


ymin=2801
ymax=4099
y_half=1
ytick=1
ysubtick=5
axis_label="MSH"
parameter="MSH"

J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"



psxy  msh.gmt  -Y${plot_height}   ${J_options} ${R_options}  -P -K -O -W4p,black ${font_label} ${font_anno} >> ${plot}
psxy  msh.gmt  -BWsen  -Bya400+200f100+l"${axis_label}"  ${J_options} ${R_options}  -P -K -O -W2.5p,green ${font_label} ${font_anno} >> ${plot}

pstext << END_CAT -R -JX -F+cBL+f8p -D0.1/0.15 -P -K -O -Gwhite  >> ${plot}
(g)
END_CAT

################## CO2

parameter="CO2"

ymin=50
ymax=399
ytick=100
ysubtick=25
axis_label="CO@-2@- (PPM)"


J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"


awk -F',' '{print -$1, $2}' ${parameter}_1.csv > data.txt
awk -F',' '{print -$1, $3}' ${parameter}_1.csv > lowess.txt
awk -F',' '{print -$1, $4}' ${parameter}_1.csv > uncertainty.txt
awk -F',' '{print -$1, $5}' ${parameter}_1.csv > uncertainty_temp.txt
tac uncertainty_temp.txt >> uncertainty.txt

psxy uncertainty.txt -Y${plot_height}    ${J_options} ${R_options} -P  -K -O -Glightred   >> ${plot}
psxy data.txt    ${J_options} ${R_options} -P -O -K -Sc${dot_size} -Gblack  >> ${plot}
psxy  lowess.txt  -BWsen  -Bya${ytick}f${ysubtick}+l"${axis_label}"  ${J_options} ${R_options} -P -O -K -W${loess_line},darkred ${font_label} ${font_anno} >> ${plot}

pstext << END_CAT -R -JX -F+cBL+f8p -D0.1/0.15 -P -K -O -Gwhite  >> ${plot}
(h)
END_CAT

############ Tectonic

ymin=0
ymax=1
y_half=1
ytick=1
ysubtick=5
axis_label="Tectonics"
parameter="tectonic_events"

J_options="-JX${plot_width}/${plot_height}"
R_options="-R${xmin}/${xmax}/${ymin}/${ymax}"


psxy  << END_CAT -Y${plot_height}   ${J_options} ${R_options} -O -K -P -Se -Gblue  >> ${plot}
13 0.5 0 2 0.5
6 0.5 0 4 0.5
END_CAT

psxy << END_CAT  ${J_options} ${R_options} -O -K -P  -Wthickest,blue  >> ${plot}
${xmin} 0.5
${xmax} 0.5
END_CAT

pstext  << END_CAT  -BWsen  -Bxa100 -By+l"${axis_label}"  ${J_options} ${R_options}  -P -K -O -Wblack -F+f8p,Helvetica,black -F+jCM ${font_label} ${font_anno}  >> ${plot}
13 0.9 Volcanism
7.65 0.9 Rapid exhumation
END_CAT

pstext << END_CAT -R -JX -F+cBL+f8p -D0.1/0.15 -P  -O -Gwhite  >> ${plot}
(i)
END_CAT


psconvert -Tf -A ${plot}

