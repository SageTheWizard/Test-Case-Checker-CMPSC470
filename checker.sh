#!/bin/bash

OIFS=$IFS; IFS=$'\n'; minc_arr=($(ls ../sample/minc)); out_arr=($(ls ../sample/output)); IFS=$OIFS;

length=${#minc_arr[@]}
minc_dir="../sample/minc/"
out_dir="../sample/output/"
tests_total=0
tests_correct=0

for (( i=0; i<$length; i++ )); do
	out=${out_dir}${out_arr[i]}
	minc=${minc_dir}${minc_arr[i]}

	out_cmp=$(java SemanticChecker ${minc})
	minc_cmp=$(cat ${out})
	if [ "$out_cmp" == "$minc_cmp" ] 
	then
		echo GOOD!
		let "tests_total++"
		let "tests_correct++"
	else
		echo ERROR ON FILE
		echo ${minc_arr[i]}
		echo EXPECTED....
		echo ${minc_cmp}
		echo RECIEVED...
		echo ${out_cmp}
		tests_total++
	fi
	
	echo YOU GOT ${tests_correct} / ${tests_total} CORRECT
done
