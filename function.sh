#!/bin/bash 

# File-Name: function.sh
# This file was created on 02/17/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: function

clear
echo -e "\v\tthis is a script that takes two numbers and pass them to a function\n"
sum=0
a=$1
b=$2

myFunction()
{
 let "sum=$a+$b"
}

if [ -n "$1" ]
 then
	myFunction
else
  echo -en " Enter the first number: "
  read a
  echo -en " Enter the second number: "
  read b
  myFunction
fi
echo -e "$a + $b = $sum"
