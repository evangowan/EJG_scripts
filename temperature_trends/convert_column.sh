#! /bin/bash

temperature_file=temperature_data.txt

awk --field-separator='\t' '{print $1+0.5/12, $2,"\n"$1+1.5/12, $3"\n"$1+2.5/12, $4"\n"$1+3.5/12, $5"\n"$1+4.5/12, $6"\n"$1+5.5/12, $7"\n"$1+6.5/12, $8"\n"$1+7.5/12, $9"\n"$1+8.5/12, $10"\n"$1+9.5/12, $11"\n"$1+10.5/12, $12"\n"$1+11.5/12, $13}' $temperature_file | awk '{if ($2 > -60) {print $1, $2}}' > temperature_data_column.text
