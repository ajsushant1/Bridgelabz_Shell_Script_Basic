#!/bin/bash -x

# VARIABLE
count=0
originalNumber=0

# READ NUMBER FROM  USER
read -p "Enter a number to find prime factorization :" number

# INITIALIZING VARIABLE
originalNumber=$number

# TO COMPUTE PRIME FACTORIZATION OF NUMBER AND STORED IN ARRAY
for (( factor=2; factor<=$number; ))
do
   if [ $((number%factor)) -eq 0 ]
   then
		number=$(($number/factor))
		primeFactor[((count++))]=$factor
   else
      ((factor++))
   fi
done

# PRINTING ARRAY ELEMENTS
echo "Prime factor of $originalNumber are :"${primeFactor[@]}




