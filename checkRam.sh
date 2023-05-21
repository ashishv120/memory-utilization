#!/bin/bash

free | awk '{print $1 " " $2 " " $3}' | awk '(NR>1)' | while read output;
do
echo "RAM Details: $output"
done



