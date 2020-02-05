#!/bin/bash -x

# VARIABLES
max=100;
min=999;


for i in {1..5}
do
	# TO GET RANDOM VALUE
	random=$(( 100 + RANDOM % 900 ))

	# TO GET MAXIMUM AND MINIMUM NUMBER
	if [ $max -lt $random ]
	then
			max=$random;
	fi

	if [ $min -gt $random ]
	then
			min=$random;
	fi
done
	echo "Max is :$max"
	echo "Min is :$min"
