#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Create a script that displays odd numbers between 1 and 50.
#
# Version: v1
#
# To run: sudo ./display_odd_numbers.sh
#########################################

for number in $(seq 1 50)
do 
	if [[ ! $((number%2)) == 0 ]]
	then
		echo $number
	fi
done
