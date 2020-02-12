 #!/bin/bash -x

#CONSTANTS
month=12
# VARIABLES
limit=50;
count=1

# DECLARING DICTIONARY
declare -A BirthCount

# STORING BIRTH COUNT OF INDIVIDUALS BIRTH
while [[ $count -le $limit ]]
do
	random=$((1+RANDOM%$month))
	BirthCount[$random]=$((${BirthCount[$random]}+1))
	((count++))
done

# DISPLAYING COUNT OF INDIVIDUAL HAVING BIRTH IN SAME MONTH
for (( i=1; i<=$month; i++ ))
do
	echo "In Month $i=${BirthCount[$i]} people having birthday"
done
