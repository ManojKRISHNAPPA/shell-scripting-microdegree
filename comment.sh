
#Author: 
#created:
#version:
#purpose: 

echo "testing the scripting"


#multiline commnet

<< sindhu
Author:
created:
version:
purpose


dockerStatus=$(systemctl status docker | awk '/Active/ {print $3}' | tr -d "[()]")
dockerVersion=$(docker -v | awk '{print $3}' | tr -d ',')
cdate=$(date | awk '{print $4}')
echo "current time is: $cdate"
echo "The docker status is  : $dockerStatus"
echo "The docker version is : $dockerVersion"
echo

sindhu
