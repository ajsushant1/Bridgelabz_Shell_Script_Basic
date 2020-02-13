#!/bin/bash -x

# CONSTANTS
CELCIUS_TO_FAHRENHEIT=1;
FAHRENHEIT_TO_CELCIUS=2;

# READ TEMPERATURE FROM USER
read -p "Enter a temperature " temperature

echo "Select conversion :"

# CHOICE FOR TEMPERATURE CONVERSION
echo "press 1 to Celcius to Fahrenheit : "
echo "press 2 Fahrenheit to Celcius : "

# READING CHOICE  OF USER
read choice

# TO CONVERSION OF CELCIUS TO FAHRENHEIT
function celciusToFahrenheit(){
	local input=$1
	if [ $input -ge 0 -a $input -le 100 ]
	then
		output=$( echo "scale=2; (((($input*9/5))+32))" | bc )
	else
		echo "Invalid Please enter temperature for celcius in between 0 to 100 "
	fi
	echo $output
}

# TO CONVERSION OF FAHRENHEIT TO CELCIUS
function fahrenheitToCelcius(){
	local input=$1
   if [ $input -ge 32 -a $input -le 212 ]
	then
		output=$( echo "scale=2; (((($input-32))*5/9))" | bc )
	else
		echo "Invalid Please enter temperature for fahreheit in between 32 to 212 "
	fi
	echo $output
}

# CASES FOR USER'S CHOICE
case $choice in
	$CELCIUS_TO_FAHRENHEIT)
		result="$( celciusToFahrenheit $temperature )"
		echo "$result"
				;;
	$FAHRENHEIT_TO_CELCIUS)
		result="$( fahrenheitToCelcius $temperature )"
		echo "$result"
				;;
	*)
		echo "Invalid input.."
				;;
esac
