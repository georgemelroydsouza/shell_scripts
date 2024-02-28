#!/bin/bash

##########################################
#
# Author: George Dsouza
#
# Create a script that drops the packets from an IP address given by the user
#
# Version: v1
#
# To run: sudo ./drop_ip_packets.sh
#########################################

#set -x
#set -e
#set -o pipefail

read -p "Enter the IP address: " ipaddr

iptables -I INPUT -s $ipaddr -j DROP

echo "All packets from the $ipaddr will be dropped"

