#!/bin/bash -x

# READ NUMBER FROM USER LIKE 10,10,100,1000
read -p "Enter a number :" number

# TO DISPLAY UNIT OF NUMBER
if [ $number -eq 1 ]
then
	echo "Unit"
elif [ $number -eq 10 ] 
then
	echo "Ten"
elif [ $number -eq 100 ]
then
	echo "Hundred"
elif [ $number -eq 1000 ]
then
	echo "Thousand"
else
	echo "Enter number like 1,10,100 and 1000 "
fi
