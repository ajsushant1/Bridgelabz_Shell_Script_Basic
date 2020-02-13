#!/bin/bash -x

# READ NUMBER FROM USER
read -p "Enter a number like 1,10,100,1000 :" number

# DISPLAY UINIT OF NUMBER
case $number in
	1)
		echo "Unit"
				;;
	10)
		echo "Ten"
				;;
	100)
		echo "Hundred"
				;;
	1000)
		echo "Thousand"
				;;
	*)	
		echo "Invalid Input"
				;;
esac

