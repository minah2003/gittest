#!/bin/bash

for i in {1..3}
do
	read -p "please enter the number in $i loop: " NUM
	while [ -z $NUM ]
	do
	   read -p "please enter the number in $i loop: " NUM
        done
	if [ $NUM -gt 10 ]; then
		echo "$NUM is greater than 10"
	elif [ $NUM -lt 10 ]; then
	        echo "$NUM is less than 10"
	else
	  echo "$NUM is equal to 10"

	fi


	MY_ARRAY+=("$NUM")
done

echo ${#MY_ARRAY[@]}
echo ${MY_ARRAY[@]}
