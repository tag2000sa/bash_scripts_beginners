#!/bin/bash 

# File-Name: sed.sh
# This file was created on 02/16/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: 

echo "# original file ($1)"
cat $1
echo ""
echo "# capitalize first letter"
sed 's/\(\b[a-z]\)/\u\1/g' $1
echo ""
echo "# replace string (abdulaziz) with (faisal)"
sed 's/abdulaziz/faisal/' $1
echo ""
echo "# replace string (king abdulaziz) with (princess noura) from 3rd line"
sed '3 s/king abdulaziz/princess noura/' file.txt
echo ""
echo "# rearrange string from lines 2nd to 4th"
sed -E '2,4 s/([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*)/\1 \4 of \2 \3/'  file.txt  
echo ""
echo "# Deleting 2nd and 3rd lines"
sed '2,3d' file.txt
