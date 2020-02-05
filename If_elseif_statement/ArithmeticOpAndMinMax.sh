#!/bin/bash -x

# READ THREE NUMBERS FROM USER
	read -p "enter first number :" a 
	read -p "enter second number :" b
	read -p "enter second number :" c

# PRINTING USER INPUTS
	echo "a = "$a
	echo "b = "$b
	echo "c = "$c

# ARITHMETIC OPERATIONS
	opFirst=$((a + b * c))
	echo "a + b * c = " $opFirst

	opSec=$((a % b + c))
	echo "a % b + c = " $opSec

	opThrd=$((c + a / b))
	echo "c + a / b = " $opThrd

	opForth=$((a * b + c))
	echo "a * b + c = " $opForth


# TO FIND MAXIMUM NUMBER FROM RESULT OF ARITH METIC OPERATIONS
	if [ $opFirst -gt $opSec -a $opFirst -gt $opThrd -a $opFirst -gt $opForth ]
	then

			echo "$opFirst is Maximum"
	elif [ $opSec -gt $opThrd -a $opSec -gt $opForth ]
	then

			echo "$opSec is Maximum"
	elif [ $opThrd -gt $opForth ]
	then

			echo "$opThrd is Maximum"
	else
			echo "$opForth is Maximum"
	fi


# TO FIND MINIMUM NUMBER FROM RESULT OF ARITH METIC OPERATIONS
	if [ $opFirst -lt $opSec -a $opFirst -lt $opThrd -a $opFirst -lt $opForth ]
	then

	      echo "$opFirst is Minimum"
	elif [ $opSec -lt $opThrd -a $opSec -lt $opForth ]
	then

	      echo "$opSec is Minimum"
	elif [ $opThrd -lt $opForth ]
	then

	      echo "$opThrd is Minimum"
	else
	      echo "$opForth is Minimum"
	fi

