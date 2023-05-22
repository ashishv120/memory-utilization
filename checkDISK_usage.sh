#!/bin/bash

alert=15
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




