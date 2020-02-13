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
maximumValue=${dice[1]}
minimumValue=${dice[1]}
maxIndex=1
minIndex=1

# TO FIND NUMBER THAT REACHED MAXIMUM TIMES AND MINIMUM TIMES
for (( index=2; index<=6; index++ ))
do
	if [[ $maximumValue -lt ${dice[$index]} ]]
	then
		maximumValue=${dice[$index]}
		maxIndex=$index
	fi
	if [[ $minimumValue -gt ${dice[$index]} ]]
	then
		minimumValue=${dice[$index]}
		minIndex=$index
	fi
done

# DISPLAYING NUMBER AND ITS COUNT WHICH REACHED MAXIMUM AND MINIMUM TIMES
echo ${dice[@]}
echo "Maximum count of dice $maxIndex is :" $maximumValue
echo "Minimum count of dice $minIndex is :" $minimumValue



