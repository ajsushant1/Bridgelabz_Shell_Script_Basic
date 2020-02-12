#!/bin/bash -x

# ARRAY DECLARATION
declare -a input

# READ ARRAY ELEMENTS FROM USER
echo  "Enter six element in array "

	for (( i=0; i<6; i++ ))
	do
		read number
		input[i]=$number	
	done

# TO CHECK SUM OF THREE INTEGERS IS ZERO

for (( i=0; i<6; i++))
do
	for (( j=$((i+1)); j<6; j++ ))
	do
		for (( k=$((i+2)); k<6; k++ ))
		do

			if	 [ $((${input[i]}+${input[j]}+${input[k]})) -eq 0 ]
			then
					echo ${input[i]},${input[j]},${input[k]}
			fi
		done
	done
done
