#!/bin/bash
## 2## 3## 
#Comment1
read -t 20 -p "Enter your IP: " IP
#comment3

if [ -z $IP ] || [[ $(echo $IP | tr -d [:alnum:] | tr -d  [:space:]  | wc -c) -ne 3 ]] || [[ $(echo $IP | tr -d [=.=]) =~ [a-zA-Z#\$\%\^\&\*\(\)_\-\+=] ]]; then
 echo "Enter Valid IP"
 exit 1;
fi 


fields=$(echo "$IP" | cut -d '.' -f1-4 | tr '.' ' ')
read -a MY_ARRAY <<< "$fields"

for i in {0..3}
do
  if  [ ${MY_ARRAY[i]} -ge 0 ] &&  [ ${MY_ARRAY[i]} -lt 255 ]; then
	  continue
  else
     echo "invalid IP"
     exit 2;
  fi

done  
	  


echo $IP
