#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
WAGE_PER_HOUR=20
FULL_TIME=8
PART_TIME=4
sal=0
for (( counter=0; counter<20; counter++ ))
do
	attendance=$((RANDOM%3))

	case $attendance in
		0)
			echo "Employee Present"
			sal=$((sal+WAGE_PER_HOUR*FULL_TIME))
			;;
		1)
			echo "PartTime emp"
			sal=$((sal+WAGE_PER_HOUR*PART_TIME))
			;;
		2)
		echo "Employee Absent"
		;;
	esac
done
echo $sal

