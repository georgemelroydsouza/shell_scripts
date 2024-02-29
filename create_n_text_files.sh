#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Develop a script that will create 5 text files in the current directory.
#
# Version: v1
#
# To run: sudo ./create_n_text_files.sh
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

for number in $(seq 1 $total_files)
do
	touch "$directory_name/file_$number.txt"
done
