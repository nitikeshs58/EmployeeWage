#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

WAGE_PER_HOUR=20
FULL_TIME=8
PART_TIME=4
sal=0
hour=0
day=0

while [[ $day -lt 20 ]]
do
	attendance=$((RANDOM%3))

	case $attendance in
		0)
		echo "Employee Present"
		sal=$((sal+WAGE_PER_HOUR*FULL_TIME))
		hour=$((hour+FULL_TIME))
		day=$((day+1))
		if [[ $hour -eq 100 ]]
		then
			break
		fi
		;;

		1)
		echo "PartTime emp"
		sal=$((sal+WAGE_PER_HOUR*PART_TIME))
		hour=$((hour+PART_TIME))
		day=$((day+1))
		if [[ $hour -eq 100 ]]
		then
			break
		fi
		;;

		2)
		echo "Employee Absent"
		;;
	esac
done
echo $sal

