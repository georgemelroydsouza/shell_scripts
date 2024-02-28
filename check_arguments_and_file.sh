#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Create a script that takes an argument and tests if it's a file or not. Change it so that it tests if the script is run with exactly one argument
#
# Version: v1
#
# To run: sudo ./check_file.sh
#########################################

#set -x
#set -e
#set -o pipefail

# validate the arguments
if [ ! $# -eq 1 ]
then
	echo "You should pass one argument which is the filename"
	exit
fi

# validate if file
if [ -f $1 ]
then
	echo "$1 is a file"
else
	echo "$1 is not a file"
fi
