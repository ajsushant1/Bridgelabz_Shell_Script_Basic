#!/bin/bash -x

# READ THE RANGE OF NUMBER FROM USER
	read -p "Enter starting number for range :" start
	read -p "Enter ending number for range :" end


	if [ $start -eq 1 ]
	then
		start=$(($start+1))
	fi

# LOOP FOR RANGE
for (( i=$start; i<=$end; i++ ))
do
	flag=0;

	# LOOP TO FIND PRIME NUMBER IN BETWEEN GIVEN RANGE
		for (( j=2; j<=$(($i/2)); j++ ))
		do

			if [ $(($i%j)) -eq 0 ]
			then
					flag=1;
					break;
			fi
		done

	if [ $flag -eq 0 ]
	then
			echo $i
	fi

done
