#!/bin/bash -x

# TO GET RANDOM VALUE
randomCheck=$((RANDOM%2));

# TO CHECK HEAD OR TAIL
if [ $randomCheck -eq 1 ]
then
	echo "Head ";
else
	echo "Tail";
fi
