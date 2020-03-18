#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
wagePerHour=20
fullTime=8
partTime=4
attendance=$((RANDOM%3))
if [[ attendance -eq 0 ]]
then
	echo "Employee Present"
	sal=$((wagePerHour*fullTime))
elif [[ attendance -eq 1 ]]
then
	echo "Parttime emp :"
	sal=$((wagePerHour*partTime))
else
	echo "Emp Absent"
fi
