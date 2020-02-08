#!/bin/bash -x

# VARIABLE

harmonicValue=0

# READ NUMBER FROM USER 
	read -p "Enter a limit to compute harmonic value :" limit

# TO COMPUTE HARMONIC NUMBER
for ((i=1; i<=limit; i++ ))
do
	harmonicValue=$( echo "scale=2; $harmonicValue+((1/$i))" | bc )
done
echo $harmonicValue
