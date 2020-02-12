#!/bin/bash -x

# READ YEAR FROM USER
	read -p "Enter year :" year

#TO CHECK YAER IS LEAP YEAR OR NOT
	if [ $(($year%4)) -eq 0 -a $(($year%100)) -ne 0 -o $(($year%400)) -eq 0 ]
	then
			echo "$year is leap year"
	else
			echo "$year is not leap year"
	fi
