#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Script to prompt the user for a directory and changes the permissions of all subdirectories to 755 and to all files to 644 recursively
#
# Version: v1
#
# To run: sudo ./fix_permissions.sh
#########################################

#set -x
#set -e
#set -o pipefail

read -p "Enter the directory name: " dir

# validate the directory exists
if [ ! -d $dir ]
then
	echo "Directory $dir does not exists"
	exit
fi

echo -n "Changing the file permissions to 644 recursively"
find $dir -type f -exec chmod 644 {} \;
echo "Done"

echo -n "Changing the directory permissions to 755 recursively"
find $dir -type d -exec chmod 755 {} \;
echo "Done"
