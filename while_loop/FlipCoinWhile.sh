#!/bin/bash -x

# CONSTANT
GOAL=11

# VARIABLES
headWin=0
tailWin=0

# TO COUNT HEAD WIN AND TAIL WIN OF FLIPED COIN
while [[ $headWin -ne $GOAL && $tailWin -ne $GOAL ]]
do
	random=$((RANDOM%2))

	if [ $random -eq 1 ]
	then
		((headWin++))
	else
		((tailWin++))
	fi
done

