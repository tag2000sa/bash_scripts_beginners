#!/bin/bash 

# File-Name: max.sh
# This file was created on 02/16/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: script to find the largest number from a list

echo -n "How many numbers in your list? "
read n
max=0
for i in $(seq $n)
do
    echo -n "$i- Enter a number: "
    read number
    if [ $number -gt $max ]
    then
        let max=$number
    fi
done
echo ""
echo "The largest number is $max"
