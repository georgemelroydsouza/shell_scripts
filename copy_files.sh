#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Create a script that takes 3 arguments: a file extension, a source directory, and a destination directory given as absolute or relative paths to the script. The script will copy all the files with that extension from the source directory to the destination directory.
#
# Version: v1
#
# To run: sudo ./copy_files.sh
#########################################

if [[ ! $# -eq 3 ]]
then
	echo "Enter the three arguments"
	exit
fi

if [[ ! -d $2 ]] || [[ ! -d $3  ]]
then
	echo "$2 or $3 is not a valid directory"
	exit
fi

if [[ $2 == $3 ]]
then
	echo "$2 and $3 are the same directory"
	exit
fi

cp ${2}/*.${1} ${3}/

echo "Copied all the files with extension $1 to $3 directory"
