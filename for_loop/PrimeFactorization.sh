#!/bin/bash -x

# READ NUMBER FROM  USER
	read -p "Enter a number to find prime factorization :" number

# TO COMPUTE PRIME FACTORIZATION OF NUMBER
for (( i=2; i*i<=$number; ))
do
	if [ $((number%i)) -eq 0 ]
	then
			number=$(($number/i))
			echo "$i"
	else
		((i++))
	fi
done
