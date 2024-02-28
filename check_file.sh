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

# validate if file
if [ -f $1 ]
then
	echo "$1 is a file"
else
	echo "$1 is not a file"
fi
