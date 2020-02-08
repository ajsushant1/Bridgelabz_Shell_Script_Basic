#!/bin/bash -x

# VARIABLE
flag=0;

# READ NUMBER FROM USER
read -p "Enetr a number to check prime or not :" number

# TO CHECK PRIME OR NOT
for (( i=2; i<=$(($number/2)); i++))
do
	if [ $(($number%i)) -eq 0 ]
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
