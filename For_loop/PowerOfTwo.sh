#!/bin/bash -x

# VARIABLE
	power=1

# READING COMMAND LINE ARGUMENT 
	limit=$1

# CACULATING AND PRINTING TABLE OF POWER OF TWO 
for(( i=0; i<=limit; i++ ))
do
	power=$((power*2))

	echo "$power"
done
