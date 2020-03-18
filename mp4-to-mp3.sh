#!/bin/bash 

# File-Name: mp4-to-mp3.sh
# This file was created on 03/18/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: script to extract mp3 from mp4

# check inputs
if [ $# -lt 1 ]
then
    echo -e "USAGE: mp4-to-mp3 <file-name>.mp4"
fi


for file in "$@"
do
    temp_filename=$(echo $file|sed 's/ /_/g') # set a temporary file name
    if [ "$file" != $temp_filename ]
    then
        mv -T "$file" $temp_filename # change file name temporarly
    fi
    newFile_name=$(echo $temp_filename|sed "s/.mp4/.mp3/") # extract file name 
	## convert .mp4 to .mp3
    ffmpeg -i $temp_filename -vn \
           -acodec libmp3lame -ac 2 -qscale:a 4 -ar 48000 -loglevel -8\
            $newFile_name 
    if [ "$file" != $temp_filename ]
    then
        mv -T $temp_filename "$file" # restore original file name
    fi
	echo -e "$file -> $newFile_name"
done
