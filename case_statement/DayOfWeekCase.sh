#!/bin/bash -x

# READ NUMBER FROM USER
read -p "Enter a single digit number :" number

# DISPLAY DAY OF WEEK
case $number in
  1)echo "Monday"
         ;;
  2)echo "Tuesday"
	      ;;
  3)echo "Wendnesday"
         ;;
  4)echo "Thursday"
  	      ;;
  5)echo "Friday"
         ;;
  6)echo "Satureday"
  	      ;;
  7)echo "Sunday"
         ;;
  *)echo "Enter number between 1 to 7"
			;;
esac


