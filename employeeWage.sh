#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
wagePerHour=20
fullTime=8
partTime=4
attendance=$((RANDOM%3))

case $attendance in
	0)
		echo "Employee Present"
		sal=$((wagePerHour*fullTime))
		;;
	1)
		echo "PartTime emp"
		sal=$((wagePerHour*partTime))
		;;
	2)
		echo "Employee Absent"
		;;
esac
