#!/bin/bash -x

# VARIABLE
factorial=1

# READ NUMBER FROM USER
	read -p "Enter a number to find factorial : " number

# TO GET FACTORIAL OF NUMBER
for (( j=1; j<=$number; j++ ))
do
	  factorial=$((factorial*j)) 

done

echo "Factorial of $number is $factorial"
