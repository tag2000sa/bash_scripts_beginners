#!/bin/bash 

# File-Name: pattern1.sh
# This file was created on 02/12/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: print pattern as follows
#       3 2 1 2 3
#         2 1 2
#           1

for i in $(seq 1 $1)
do
    for j in $(seq 1 $i)
    do
        echo -n '  '
    done
    echo -n $(seq -s ' ' $(($1-$i+1)) -1 1) && echo -n " " &&  echo $(seq -s ' ' 2 1 $(($1-$i+1)))
done
