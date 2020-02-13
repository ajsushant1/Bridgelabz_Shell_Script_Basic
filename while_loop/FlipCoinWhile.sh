#!/bin/bash -x

# CONSTANT
GOAL=11

# VARIABLES
headWinCount=0
tailWinCount=0

# TO COUNT HEAD WIN AND TAIL WIN OF FLIPED COIN
while [[ $headWinCount -ne $GOAL && $tailWinCount -ne $GOAL ]]
do
	random=$((RANDOM%2))

	if [ $random -eq 1 ]
	then
		((headWinCount++))
	else
		((tailWinCount++))
	fi
done

# DISPLAYING TOTAL WIN COUNT OF HEAD AND TAIL
echo "total head win count is :$headWinCount"
echo "total tail win count is :$tailWinCount"
