#!/bin/bash -x

# READ VALUE FROM USER FOR UNIT CONVERSION 
read -p "Enter a number :" number

# CHOICE FOR CONVERSION
echo "1 Feet to Inch"
echo "2 Feet to Meter" 
echo "3 Inch yo Feet"
echo "4 Meter to Feet"   

# READ CHOICE FROM USER
read -p "Enter a number to select conversion " input

# CASES FOR CONVERSION
case $input in
	1)
		conversion=$((12*$number))
		echo "$number feet = $conversion inch"
	             		;;
	2)
		conversion=$(expr($number/3.2808 | bc))
      echo "$number feet = $conversion Meter"
							;;
	3)
		conversion=$(($number*0.0833 | bc))
       echo "$number inch = $conversion feet"
            		   ;;
	4)
		conversion=$(($number*3.2808 | bc))
      echo "$number meter = $conversion feet"
	             		;;
	*)echo "Invalid"
   		            ;;
esac
