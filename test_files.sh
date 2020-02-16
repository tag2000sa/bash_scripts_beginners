#!/bin/bash 

# File-Name: test_files.sh
# This file was created on 02/16/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: script to manipulate files

# create folder (test_files) if not exist
mkdir -p test_files test_files/yesterday test_files/today 
echo "# Folders created."

# create files inside (today) folder
touch test_files/today/file{1..3}.txt
echo "this file is created today $(date)" >> test_files/today/file1.txt
echo "# Todays files created."

# copy (file1.txt) from folder (today) to folder (yesterday) and chage its creation time
cp test_files/today/file1.txt test_files/yesterday/
touch -c -d 'yesterday' test_files/yesterday/*.txt
echo "# Yesterdays files created."

# find ysterdays files
echo ""
echo "list of yesterdays files:"
find  test_files/ -atime 1 -name "*.txt"

# find todays files
echo ""
echo "list of todays files:"
find test_files/ -atime 0 -name "*.txt"
