#!/bin/bash

####################
#Author: Ashish
#Version: v1
#
# This script is used to check the utilization of the Memory Managament for RAM usage and helps user to check the details on the server. 
#
####################

echo "Details of the RAM usage"
free -h | awk '{print $1 " " $2 " " $3}' | awk '(NR>1)' | while read output;
do
echo "$output"
done

####################
# Comments used and details of it
# free command is a great way to monitor RAM usage on a server
# '-h' gives the details in human readable format (converts digits to 3 digit number)
# (NR>1) skips the first row
# 
####################

