#!/bin/bash 

# File-Name: for1.sh
# This file was created on 02/17/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: for-loop c-like form

# Finding the largest number among 10 numbers entered by the user
clear
echo -e "\vyou are going to enter 10 random integers to find the largest one\n"
for ((i=1; $i <= 10 ;i++))
do
 echo -en "\t$i) Enter an integer: "
 read number[$i]
done
max=0
for ((i=1; $i <= 10 ;i++))
do
 if [[ ${number[$i]} -gt max ]]
  then
   let "max=${number[$i]}"
 fi
done
echo -e "\v\tThe largest number is: ($max)\v\v"
