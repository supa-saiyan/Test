#!/bin/bash

clear 
line="==================================================================================="
echo -n "Enter your name: "
read name  
echo
if [ -z $name ];then 
echo "plzz enter name " 
exit
fi
echo -n "Enter your surname: "
read sname 
echo
echo $name-$sname "Ask for server report"
echo
echo $line
echo
uname -a
echo
echo $line
nprocessor=$(grep  -c "processor" /proc/cpuinfo)
echo
echo "number of processor:" $nprocessor
echo 
mem=$(free -m | awk '/Mem/{print $2}')
echo
echo "Ram in MB:" = $mem
echo
echo $line
echo
cpu=$(top -bn1 | awk '/Cpu/{print $5}')
#top | awk '/Cpu/{print $5}' 
echo "number of cpu not used:" $cpu
echo

#read -p "press <enter> to continue" 

#firefox http://google.com &
#sleep 1
#firefox -new-tab http://youtube.com &
#sleep 1
#firefox -new-tab http://facebook.com














