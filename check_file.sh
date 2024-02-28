#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Create a script that takes an argument and tests if it's a file or not.y
#
# Version: v1
#
# To run: sudo ./check_file.sh
#########################################

#set -x
#set -e
#set -o pipefail

read -p "Enter the file name: " filename

# validate if file
if [ -f $filename ]
then
	echo "$filename is a file"
else
	echo "$filename is not a file"
fi
