#!/bin/bash 

# File-Name: until.sh
# This file was created on 02/17/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject:  infinit loop, to break the loop enter ( k )

clear
echo -e "\v\tthis is infinit loop\n\tto break the loop enter ( K )\n"
a=0
until [ $a == 'k' ]
do
 echo -e "Enter a letter"
 read a
done
