#!/bin/bash -x

# DECLARING DICTIONARY
declare -A dice

# STORING RESULT COUNT OF DICE
while [[ ${dice[$random]} -ne 10 ]]
do
	random=$((1+RANDOM%6))
	dice[$random]=$((${dice[$random]}+1))
done

#INITIALIZATION
maxValue=${dice[1]}
minValue=${dice[1]}
maxIndex=0
minIndex=0

# TO FIND NUMBER THAT REACHED MAXIMUM TIMES AND MINIMUM TIMES
for (( i=2; i<=6; i++ ))
do
	if [[ $maxValue -lt ${dice[$i]} ]]
	then
		maxValue=${dice[$i]}
		maxIndex=$i
	fi

	if [[ $minValue -gt ${dice[$i]} ]]
	then
		minValue=${dice[$i]}
		minIndex=$i
	fi
done

# DISPLAYING NUMBER AND ITS COUNT WHICH REACHED MAXIMUM AND MINIMUM TIMES
#echo "${dice[$max]}"
echo ${dice[@]}
echo $maxValue
echo $maxIndex
echo $minValue
echo $minIndex


