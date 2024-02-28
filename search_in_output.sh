#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Create a script that takes exactly two arguments. The first argument is a shell command and the second argument is a string. The script will check if the string belongs to the output of the command.
# Example: ./search_in_output.sh "ifconfig -a" "flags" will say if the string flags belongs to the output of ifconfig -a
#
# Version: v1
#
# To run: sudo ./check_file.sh
#########################################

#set -x
#set -e
#set -o pipefail

# validate the arguments
if [ ! $# -eq 2 ]
then
	echo "You should pass two arguments which is the command and search string"
	exit
fi

searchStringCount=$( $1 | grep -c $2 )

if [ $searchStringCount -le 0 ]
then
	echo "Search string does not exists"
else
	echo "Found the occurence of the search string"
fi
