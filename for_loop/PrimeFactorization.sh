#!/bin/bash -x

# READ NUMBER FROM  USER
read -p "Enter a number to find prime factorization :" number

# TO COMPUTE PRIME FACTORIZATION OF NUMBER
echo "Prime factor of $number are :"
for (( factor=2; factor<=$number; ))
do
	if [ $((number%factor)) -eq 0 ]
	then
		number=$(($number/factor))
		echo "$factor"
	else
		((factor++))
	fi
done
