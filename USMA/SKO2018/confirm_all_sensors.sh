#!/bin/bash

mapfile -t myArray < server-list.txt
#printf '%s\n' "${myArray[@]}"
for x in "${myArray[@]}"
do
   #echo $x
   #./create_accounts.py -u USM-Anywhere-Training@alienvault.com -p Password1! -n SalesDemo1 SalesDemo2 SalesDemo3 SalesDemo4 SalesDemo5 -d $x
   ./confirm_sensor.py -u USM-Anywhere-Training@alienvault.com -p Password1! -d $x  
done
