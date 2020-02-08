#!/bin/bash -x

# VARIABLES
power=1
limit=0

# READING COMMAND LINE ARGUMENTS
number=$1

#  CALCULATE AND PRINT POWER FO TWO
while [[ $power -lt 256 && $limit -le $number ]]
do
	if [ $limit -eq 0 ]
	then
		power=1
	else
		power=$(($power*2))
	fi

	echo "2^$limit = $power "
	((limit++))
done

