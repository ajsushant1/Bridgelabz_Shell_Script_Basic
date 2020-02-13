#!/bin/bash -x

# READ THREE NUMBERS FROM USER
read -p "enter first number :" firstNumber
read -p "enter second number :" secondNumber
read -p "enter second number :" thirdNumber

# ARITHMETIC OPERATIONS
firstOperation=$((firstNumber + secondNumber * thirdNumber))
secondOperation=$((firstNumber % secondNumber + thirdNumber))
thirdOperation=$((thirdNumber + firstNumber / secondNumber))
fourthOperation=$((firstNumber * secondNumber + thirdNumber))

# TO FIND MAXIMUM NUMBER FROM RESULT OF ARITHMETIC OPERATIONS
if [ $firstOperation -gt $secondOperation -a $firstOperation -gt $thirdOperation -a $firstOperation -gt $fourthOperation ]
then
	echo "$firstOperation is Maximum value"
elif [ $secondOperation -gt $thirdOperation -a $secondOperation -gt $fourthOperation ]
then
	echo "$secondOperation is Maximum value"
elif [ $thirdOperation -gt $fourthOperation ]
then
	echo "$thirdOperation is Maximum value"
else
	echo "$fourthOperation is Maximum value"
fi

# TO FIND MINIMUM NUMBER FROM RESULT OF ARITH METIC OPERATIONS
if [ $firstOperation -lt $secondOperation -a $firstOperation -lt $thirdOperation -a $firstOperation -lt $fourthOperation ]
then
	echo "$firstOperation is Minimum value"
elif [ $secondOperation -lt $thirdOperation -a $secondOperation -lt $fourthOperation ]
then
	echo "$secondOperation is Minimum value"
elif [ $thirdOperation -lt $fourthOperation ]
then
	echo "$thirdOperation is Minimum value"
else
	echo "$fourthOperation is Minimum value"
fi

