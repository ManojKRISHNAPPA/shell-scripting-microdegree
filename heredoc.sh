#!/bin/bash
<<mycom
command << delimeter
line
line
line
delimeter
mycom

#advanced usage 
cdate=$(date)
#echo "the user is: $USER"
#echo "the home directory for $USER user is: $PWD"
#echo "the currrent date is $cdate"
echo
echo

#
<<mycom
echo "
the user is: $USER
the home directory for $USER user is: $PWD
the currrent date is $cdate
"
mycom


cat << ajeeth
the user is: $USER
the home directory for $USER user is: $PWD
the currrent date is $cdate
ajeeth



