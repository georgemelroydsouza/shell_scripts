#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Script to auto add the user and group into the linux system (via the parameters passed)
#
# Version: v1
#
# To run: sudo ./auto_add_user_and_group.sh
#########################################

#set -x
#set -e
#set -o pipefail

# check if 2 parameters have been passed to the script
if [ $# -lt 2 ] 
then
	echo "Pass the username and group parameters when calling script"
	exit
fi

# validate the username by checking against the /etc/passwd
totalCountOfSimilarUserNames=$( awk -F":" '{print $1}' /etc/passwd | grep -cw $1 )
if [ $totalCountOfSimilarUserNames -gt 0 ]
then
	echo "This username already exists"
	exit
fi
# validate the group by checking against the /etc/group
totalCountOfSimilarGroups=$( awk -F":" '{print $1}' /etc/group | grep -cw $2 )

if [ $totalCountOfSimilarGroups -gt 0 ]
then
	echo "This group already exists"
	exit
fi

# add the group
groupadd $2

# add the username and group as secondary
useradd -m $1 -g $2

tail -n 1 /etc/passwd
echo 
tail -n 1 /etc/group
echo
