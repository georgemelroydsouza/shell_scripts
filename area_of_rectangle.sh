#!/bin/bash

function area_of_rectangle() {
	arg1=$1;
	arg2=$2;
	echo $((arg1 * arg2))
}

echo "Calculate the AREA of the RECTANGLE"
echo 
read -p "Enter the width: " width
read -p "Enter the height: " height

echo -n "Area of the rectangle is "
area_of_rectangle width height
