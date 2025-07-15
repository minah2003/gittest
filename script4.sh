#!/bin/bash

read -p "please enter your IP : " IP

ping -c 3 $IP >> /dev/null


if [ $? -eq 0 ]
then
echo "server is reachable"
else
echo "server is unreachable"
fi	



