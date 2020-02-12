#!/bin/bash -x

# VARIABLE
sum=0;

# READ NUMBER FROM USER
read -p "Enter the number to check palindrome or not :" number

# TO GET REVERSE NUMBER
function isPalindrome(){
local input=$1

	while [ $input -ne 0 ]
	do
			remainder=$(($input%10))
			sum=$(((($sum*10))+$remainder))
			input=$(($input/10))
	done
	echo $sum

}

# TO GET RESULT FROM FUNCTION
result=$( isPalindrome $number )

# CHECK NUMBER IS PALINDROME OR NOT
if [ $result -eq $number ]
then
	echo "$number is palindrome " 
else
		echo "Not a palindrome"
fi
