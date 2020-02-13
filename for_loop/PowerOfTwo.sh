#!/bin/bash -x

# VARIABLE
power=1

# READING COMMAND LINE ARGUMENT 
limit=$1

# CACULATING AND PRINTING TABLE OF POWER OF TWO 
for(( count=1; count<=limit; count++ ))
do
	power=$((power*2))
	echo "Power of 2^$count is: $power"
done
