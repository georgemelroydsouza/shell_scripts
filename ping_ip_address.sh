#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# script reads the IP addresses from a text file that is given by the user.
#
# Version: v1
#
# To run: sudo ./ping_ip_address.sh
#########################################

read -p "Enter the filename with the list of IP Address: " filename

if [[ ! -f $filename ]]
then
	echo "$filename is not a valid filename"
fi

for i in `cat $filename`
do
	ping -n 1 $i
done

