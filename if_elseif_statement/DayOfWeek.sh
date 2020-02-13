#!/bin/bash -x

# READ NUMBER FROM USER
read -p "Enter single digit number : " number

# TO DISPLAY WEEK DAY
if [ $number -eq 1 ]
then
	echo "Sunday"
elif [ $number -eq 2 ]
then
	echo "Monday"
elif [ $number -eq 3 ]
then
	echo "Tuesday"
elif [ $number -eq 4 ]
then
	echo "Wednesday"
elif [ $number -eq 5 ]
then
	echo "Thursday"
elif [ $number -eq 6 ]
then
	echo "friday"
elif [ $number -eq 7 ]
then
	echo "Saturday"
else
	echo "Enter number between 1 to 7"
fi
