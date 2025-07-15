#!/bin/bash
read -p "please your first number: " VAR1
read -p "please your second number: " VAR2
VAR3=$(expr $VAR1 \* $VAR2)
VAR5=$(echo "scale=3; 5.5/1.88" | bc)
VAR4=$[$VAR1+$VAR2]
echo "$VAR3 and $VAR4 and $VAR5"
