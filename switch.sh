#!/bin/bash 

# File-Name: case.sh
# This file was created on 02/17/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject:  switch tutorial

clear
echo -en "\nChose a number from 1 to 12: "
read number
if [ $number -gt 12 ]
then
 echo -e "\nEnter a number less than 12"
 elif [ $number -lt 1 ]
  then
   echo -e "\nEnter a number greater then 1"
 else
   case $number in
    1) echo -e "\v 1 = January";;
    2) echo -e "\v 2 = Februry";;
    3) echo -e "\v 3 = March";;
    4) echo -e "\v 4 = April";;
    5) echo -e "\v 5 = May";;
    6) echo -e "\v 6 = June";;
    7) echo -e "\v 7 = July";;
    8) echo -e "\v 8 = August";;
    9) echo -e "\v 9 = September";;
    10) echo -e "\v 10 = October";;
    11) echo -e "\v 11 = November";;
    12) echo -e "\v 12 = December";;
   esac
fi
echo -e "\v"
