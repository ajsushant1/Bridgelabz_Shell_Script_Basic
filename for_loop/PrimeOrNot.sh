#!/bin/bash -x

# VARIABLE
flag=0;

# READ NUMBER FROM USER
read -p "Enter a number to check prime or not :" number

# TO CHECK NUMBER IS PRIME OR NOT
for (( divisor=2; divisor<=$(($number/2)); divisor++))
do
	if [ $(($number%divisor)) -eq 0 ]
	then
		flag=1;
		break;
	fi
done

if [ $flag -eq 0 ]
then
	echo "$number is prime"
else
	echo "$number is Not prime"
fi
