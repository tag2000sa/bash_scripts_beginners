#!/bin/bash 

# File-Name: while.sh
# This file was created on 02/17/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: infinit loop, to break the loop enter ( K )

clear
echo -e "\v"
echo -e "\this is an infinit loop\n\tto break the loop press ( k )\n"
a=0
while [ $a != 'k' ]
do
 echo -e "Enter a letter"
 read a
done
