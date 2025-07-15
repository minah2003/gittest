#!/bin/bash

VAR1="NONE"
VAR2="NONE"
VAR3="NONE"

echo " Number 1: $1 and Number 2: $2"

if [ $1 -gt $2 ]
then
  VAR1=$(echo "scale=3; $1/$2" | bc)
elif [ $2 -gt $1 ]
then
  VAR2=$(expr $1\*$2)
else
  VAR3=$(expr $1 + $2)
fi
echo "VAR1: $VAR1, VAR2: $VAR2, VAR3: $VAR3"
