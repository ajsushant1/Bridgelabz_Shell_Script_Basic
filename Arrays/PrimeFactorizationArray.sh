#!/bin/bash -x

# READ NUMBER FROM  USER
   read -p "Enter a number to find prime factorization :" number

# TO COMPUTE PRIME FACTORIZATION OF NUMBER AND STORED IN ARRAY
count=0
for (( i=2; i<=$number; ))
do
   if [ $((number%i)) -eq 0 ]
   then
         number=$(($number/i))
        primeFactor[((count++))]=$i
   else
      ((i++))
   fi
done

# PRINTING ARRAY
echo ${primeFactor[@]}




