#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# script that takes an argument and tests if it's a file or not.
#
# Version: v1
#
# To run: sudo ./friends_name_for_loop.sh
#########################################

friends="Anne John Jenna Arena Paul Dan"

for name in $friends
do
	echo "Hello $name"
done
