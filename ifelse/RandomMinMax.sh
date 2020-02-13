#!/bin/bash -x

# VARIABLES
maximumValue=100;
minimumValue=999;

for count in {1..5}
do
	# TO GET RANDOM VALUE
	random=$(( 100 + RANDOM % 900 ))

	# TO GET MAXIMUM AND MINIMUM NUMBER
	if [ $maximumValue -lt $random ]
	then
			maximumValue=$random;
	fi
	if [ $minimumValue -gt $random ]
	then
			minimumValue=$random;
	fi
done
echo "Maximum Value is :$maximumValue"
echo "Minimum Value is :$minimumValue"
