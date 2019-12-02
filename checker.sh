#!/bin/bash

OIFS=$IFS; IFS=$'\n'; minc_arr=($(ls ../sample/minc)); out_arr=($(ls ../sample/output)); IFS=$OIFS;

length=${#minc_arr[@]}
minc_dir="../sample/minc/"
out_dir="../sample/output/"

for (( i=0; i<$length; i++ )); do
	out=${out_dir}${out_arr[i]}
	minc=${minc_dir}${minc_arr[i]}

	out_cmp=$(java SemanticChecker ${minc})
	minc_cmp=$(cat ${out})
	if [ "$out_cmp" == "$minc_cmp" ] 
	then
		echo GOOD!
	else
		echo ERROR ON FILE
		echo ${minc_arr[i]}
		echo EXPECT....
		echo ${minc_cmp}
		echo RECIEVED...
		echo ${out_cmp}
	fi

done
