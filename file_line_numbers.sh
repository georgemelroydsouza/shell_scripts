#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Create a script that prompts the user for a file. Test that it’s a file. Prompt the user for 2 positive integers n and m.Display the lines (from line number n to m, both inclusive) of the text file.
#
# Version: v1
#
# To run: sudo ./file_line_numbers.sh
#########################################


read -p "Enter the filename: " filename

# validate if file
if [ -f $filename ]
then
	
	read -p "Enter the first line number to display: " first_number
	echo
	read -p "Enter the last line number to display: " last_number
	echo 
	
	totalnumbers=$(($last_number-$first_number+1))

	tail -n "+$first_number" $filename | head -n $totalnumbers

else
	echo "$filename is not a file"
fi
