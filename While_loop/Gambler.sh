#!/bin/bash -x

# CONTANT
GOAL=200

# VARIABLES
stake=100
win=0
bet=0

# TO GET BET COUNT AND WIN COUNT
while [[ $stake -gt 0 && $stake -lt GOAL ]]
do
	random=$((RANDOM%2))
	bet=$((bet+1))
	if [ $random -eq 1 ]
	then
		((win++))
		stake=$((stake+20))
	else
		stake=$((stake-10))
	fi
done

# DISPLAYING BET COUNT AND WIN COUNT
echo "totalBets = $bet"
echo "Win Count = $win"
