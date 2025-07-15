#!/bin/bash


for i in {1..20}
do
	NUM="" 
	while [ -z $NUM ]
	do
		read -p "please enter a number in $i iteration: " NUM
	done
	if [ $i -eq 1 ]; then
	  SMALLEST=$NUM
          LARGEST=$NUM
  	else
		if [[ $NUM -gt $LARGEST ]]; then
		       LARGEST=$NUM
	       elif [[ $NUM -lt $SMALLEST ]]; then
		       SMALLEST=$NUM
		fi	       

	fi
done
echo $SMALLEST
echo $LARGEST
