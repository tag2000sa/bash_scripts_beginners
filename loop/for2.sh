#!/bin/bash 

# File-Name: for2.sh
# This file was created on 02/17/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: print letters as follows
# a
#  b
#   c
#    d
#     ...
#        j

clear
for number in {a..j}
do
 echo -e "\v$number\c"
done
echo ""
