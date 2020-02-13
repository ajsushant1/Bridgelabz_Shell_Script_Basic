#!/bin/bash -x

# VARIABLE
harmonicValue=0

# READ NUMBER FROM USER 
read -p "Enter a limit to compute harmonic value :" limit

# TO COMPUTE HARMONIC NUMBER
for ((denominator=1; denominator<=limit; denominator++ ))
do
	harmonicValue=$( echo "scale=2; $harmonicValue+((1/$denominator))" | bc )
done
# PRINTING HARMONIC VALUE
echo $harmonicValue
