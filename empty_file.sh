#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Create a script that clears the contents of a text file which is the script’s argument.
#
# Version: v1
#
# To run: sudo ./empty_file.sh
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
	echo "" > $1
	echo "Contents of $1 has been cleared"
else
	echo "$1 is not a file"
fi
