#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
wagePerHour=20
fullTime=8
attendance=$((RANDOM%2))
if [[ attendance -eq 0 ]]
then
	echo "Employee Present"
	sal=$((wagePerHour*fullTime))
else
	echo "Emp Absent"
fi
