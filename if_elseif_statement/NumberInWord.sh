#!/bin/bash -x

# READ SINGLE DIGIT NUMBER FROM USER
read -p "Enter single digit number : " number

# TO DISPLAY NUMBER IN WORD
if [ $number -eq 0 ]
then
	echo "You entered Zero"
elif [ $number -eq 1 ]
then
	echo "You entered One"
elif [ $number -eq 2 ]
then
	echo "You entered Two"
elif [ $number -eq 3 ]
then
	echo "You entered Three"
elif [ $number -eq 4 ]
then
	echo "You entered Four"
elif [ $number -eq 5 ]
then
	echo "You entered Five"
elif [ $number -eq 6 ]
then
	echo "You entered Six"
elif [ $number -eq 7 ]
then
	echo "You entered Seven"
elif [ $number -eq 8 ]
then
	echo "You entered Eight"
elif [ $number -eq 9 ]
then
	echo "You entered Nine"
else
	echo "Enter number between 0 to 9"
fi
