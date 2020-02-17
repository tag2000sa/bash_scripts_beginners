#!/bin/bash 

# File-Name: sort.sh
# This file was created on 02/17/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: Script to sort files based of their dates

clear
# create folders
mkdir -p original_files modified_files sorted_files/old sorted_files/today
echo -e "folders created...\n--original_files\n--modified_files\n--sorted_files\n\t|-old\n\t|-today\n"
sleep 1

# create files
touch ./original_files/{a..z}.txt
echo "files created..."
ls ./original_files/
sleep 1

# change files date
last_month=$(date -d 'last month' +'%d %b %Y %H:%M')
cp ./original_files/* ./modified_files
touch -d "$last_month" ./modified_files/{a..z..2}.txt
echo -e "\ndates changed...\n"
sleep 1

# find files older than 30 days and copy them to folder sorted_files/old
find ./modified_files -type f -mtime +30 -exec cp {} ./sorted_files/old \;
echo "old files sorted..."
ls ./sorted_files/old
echo ""
sleep 1

# find files for today and copy them to folder sorted_files/today
find ./modified_files -type f -mtime 0 -exec cp {} ./sorted_files/today \;
echo "todays files sorted..."
ls ./sorted_files/today
echo ""
