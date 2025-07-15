#!/bin/bash



MYNAME="Iman"
OUTPUT="/home/test/script1_${HOSTNAME}_$(date +%Y%m%d).log"

echo "Hello $MYNAME" | tee $OUTPUT
echo "Hello $USER" | tee  -a $OUTPUT
echo "Mina Hossein"  | tee -a  $OUTPUT
