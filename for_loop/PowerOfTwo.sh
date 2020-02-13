#!/bin/bash -x

# VARIABLE
	power=1

# READING COMMAND LINE ARGUMENT 
	limit=$1

# CACULATING AND PRINTING TABLE OF POWER OF TWO 
for(( count=0; count<=limit; count++ ))
do
	power=$((power*2))
	echo "$power"
done
