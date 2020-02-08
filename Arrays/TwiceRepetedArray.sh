#!/bin/bash -x

#VARIABLE
count=0

#TO GET TWICE NUMBER LIKE 33,77..

for (( i=1; i<100; i++ ))
do
	if [ $(($i%11)) -eq 0 ]
	then
		twiceNumber[((count++))]=$i
	fi
done

# PRINTING ARRAY
echo ${twiceNumber[@]}
