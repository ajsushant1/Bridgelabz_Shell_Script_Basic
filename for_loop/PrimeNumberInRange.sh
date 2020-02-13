#!/bin/bash -x

#VARIABLE
flag=0

# READ THE RANGE OF NUMBER FROM USER
read -p "Enter starting number for range :" start
read -p "Enter ending number for range :" end

# CONDITION TO CHECK IF START IS 1
if [ $start -eq 1 ]
then
	start=$(($start+1))
fi

echo "Prime number between $start to $end are :"
#LOOP FOR RANGE
for (( count=$start; count<=$end; count++ ))
do
	flag=0;
# LOOP TO FIND PRIME NUMBER IN BETWEEN GIVEN RANGE
	for (( divisor=2; divisor<=$(($count/2)); divisor++ ))
	do
		if [ $(($count%divisor)) -eq 0 ]
		then
			flag=1;
			break;
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo $count
	fi
done
