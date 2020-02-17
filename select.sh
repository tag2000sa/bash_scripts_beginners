#!/bin/bash 

# File-Name: select.sh
# This file was created on 02/17/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: select a day of the week and get different message

weekdays='Saturday Sunday Monday Tuesday Wednesday Thuresday Friday'
select day in $weekdays
do
case $day in
	"Saturday") 	echo -e "`clear`It is Saturday\nIt is the First day of the week\v";break;;
	"Sunday") 	echo -e "`clear`It is Sunday\nYesterday was Saturday\v";break;;
	"Monday") 	echo -e "`clear`It is Monday\nWow it the last lab session for summer semester \v";break;;
	"Tuesday") 	echo -e "`clear`It is Tuesday\nI'm feeling tired\v";break;;
	"Wednesday")	echo -e "`clear`It is Wednessday\nyeppeee .. it the last day of the week\v";break;;
	"Thuresday")	echo -e "`clear`It is Thursday\nHello weekend :D\v";break;;
	"Friday")	echo -e "`clear`It is Friday\nWTF! :$ .. tomorrow is Saturday AGAIN :'(\v";break;;
esac
done
