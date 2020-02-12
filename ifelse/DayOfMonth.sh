 #!/bin/bash -x

# COMMAND LINE ARGUMENTS
day=$1
month=$2

# TO CHECK FOR DAY AND MONTH IS BETWEEN MARCH 20 AND JUNE 20
if [  $day  -ge 1 -a  $day  -le 31 -a  $month  -ge 1 -a $month -le 12 ]
then
	if [[( $day -ge 20) && ( $day -le 31 ) && ( $month -eq 3 ) ]] ||
		[[ ( $day -ge 1 ) && ( $day -le 31 ) && ( $month -eq 4 ) || ( $month -eq 5 ) ]] ||
		[[ ( $day -ge 1 ) && ( $day -le 20 ) && ( $month -eq 6 ) ]]
	then
		echo "true"
	else
		echo "false"
	fi

else
	echo "Enter valid Day and Month"
fi
