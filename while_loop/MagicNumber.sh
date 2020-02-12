#!/bin/bash -x

# VARIABLES
low=1;
high=100;

echo "think a number between 1 to 100"

# TO FIND USER NUMBER
while [ $low -ne $high ]
do
mid=$((((low+high))/2))

read -p "If your number is greater $mid then press 1 otherwise press 0 :" input

	if [ $input -eq 1 ]
	then
		low=$(($mid+1)) 
	else
		high=$((mid))
	fi
done

#PRINTING USER'S NUMBER
echo "$low"
