#!/bin/bash -x

# ARRAY DECLARATION
declare -a input

# READ ARRAY SIZE
read -p "Enter size of array :" arraySize

# READ ARRAY ELEMENTS FROM USER
echo  "Enter six element in array "
for (( index=0; index<arraySize; index++ ))
do
	read number
	input[index]=$number
done

# TO GET ARRAY ELEMENTS HAVE SUM IS ZERO
for (( i=0; i<arraySize; i++))
do
   for (( j=$((i+1)); j<arraySize; j++ ))
   do
      for (( k=$((i+2)); k<arraySize; k++ ))
      do
         if  [ $((${input[i]}+${input[j]}+${input[k]})) -eq 0 ]
         then
               echo ${input[i]},${input[j]},${input[k]}
         fi
      done
   done
done

