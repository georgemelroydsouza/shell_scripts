#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# creates a file every 3 seconds and the name of each file will be current_minute_second
#
# Version: v1
#
# To run: sudo ./create_text_files_every_3_seconds.sh
#########################################

read -p "Enter the directory name to create the files: " directory_name
echo
read -p "Enter the number of files to create: " total_files
echo

if [[ ! -d $directory_name ]]
then
	echo "$directory_name is not a directory"
	exit
fi

if [[ $total_files -le 0 ]] || [[ $total_files -gt 100  ]]
then
	echo "Number enetered is invalid"
	exit
fi

for number in $(seq 1 $total_files)
do
	minute_second=$(date +%M_%s)
	echo "Creating file $directory_name/${number}_${minute_second}"
	touch "$directory_name/${number}__${minute_second}.txt"
	sleep 3
done
