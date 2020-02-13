#!/bin/bash -x

# VARIABLE
factorial=1

# READ NUMBER FROM USER
read -p "Enter a number to find factorial : " number

# TO GET FACTORIAL OF NUMBER
for (( naturalNumber=1; naturalNumber<=$number; naturalNumber++ ))
do
	factorial=$((factorial*naturalNumber))
done
echo "Factorial of $number is $factorial"
