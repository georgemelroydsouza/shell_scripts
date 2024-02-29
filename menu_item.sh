#!/bin/bash

PS3="CHOOSE:"
select MENUITEM in "Display date time" "List users logged in" "Display disk usage" "Quit"
do
	case $REPLY in
	1)
		date
		;;
	2)
		who
		;;
	3)
		df -h
		;;
	4)
		echo "Quiting..."
		exit
		;;
	*)
		echo "Invalid selection"
		;;
	esac
done

