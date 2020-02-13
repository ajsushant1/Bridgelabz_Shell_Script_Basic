#!bin/bash -x

# VARIABLE
sum=0;
flag=0

# READ NUMBER FROM USER
read -p "Enter a number to check palindrome and prime :" number

# TO CHECK NUMBER IS PRIME OR NOT
function isPrime(){
	local input=$1
	for (( i=2; i<=$(($input/2)); i++))
	do
		if [ $(($input%i)) -eq 0 ]
		then
			flag=1;
		break;
		fi
	done
	echo "$flag"
}

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

# TO CHECK NUMBER IS PRIME PALINDROME
if [ $( isPrime $number ) -eq 0 ]
then
	reverse=$( isPalindrome $number )
	if [ $( isPrime $reverse ) -eq 0 ]
	then
		echo "$number is prime and palindrome"
	fi
else
	echo "not prime"
fi


