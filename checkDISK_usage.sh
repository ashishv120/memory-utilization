#!/bin/bash

#####################
# Author: Ashish
# Version: v1
#
# This script is used to check the utilization of the DISK Managament for DISK usage and helps user to check these details on the server. 
#
#####################

alert=15 #used memory in percentage
echo "!!!!!Details of DISK Usage!!!!!"
df -H | awk '{print $5 "  " $1 " " $6}' | while read output;
do
 usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
 file_sys=$(echo $output | awk '{print $2}')
 mount_Loc=$(echo $output | awk '{print $3}' | cut -d'/' -f 2)
  if [ $usage -ge $alert ]
 then
  echo "Critical for $file_sys mounted on $mount_Loc" 
fi
done

#####################
# df command will display information about all mounted file systems
# '-H' gives the details in human readable format (kilobytes, megabytes, gigabytes and so on)
# cut command is used to cut a specific section of a file, -d is used to cut a specific section by a delimiter
# '-f' is used to select the specific fields (eg: -f1 gives the result of col1 & f2 gives result of col2
#
#####################




