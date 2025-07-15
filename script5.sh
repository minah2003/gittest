#!/bin/bash
#test1
#ead -p "please Enter your faviorite os: " MY_OS

while [ -z $MY_OS ]
do
	read -p "please Enter your faviorite os: " MY_OS
done


MY_OS=$(echo $MY_OS | tr [:upper:] [:lower:] | tr -d [:digit:] | tr -d [:blank:])
if [ -z $MY_OS ]
then
	echo "please enter spmething"
	exit 1;
fi

if [ $MY_OS = "linux" ] || [ $MY_OS = "unix" ]
then
echo "happy"
elif [ $MY_OS = "windows" ]
then
echo "Windowsss!! Reallyyy!!!!!"	
else
echo "shame on you"
fi
