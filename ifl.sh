#!/bin/bash
read -p "enter your number: " count
if [ $count -eq 100 ]
then
    echo "count is $count"
else 
    echo "count is not matching 100"
fi
