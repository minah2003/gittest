function IP_validator()
{

echo $1	
IP=$1


if [ -z $IP ] || [[ $(echo $IP | tr -d [:alnum:] | tr -d  [:space:]  | wc -c) -ne 3 ]] || [[ $(echo $IP | tr -d [=.=]) =~ [a-zA-Z#\$\%\^\&\*\(\)_\-\+=] ]]; then
 echo "Enter Valid IP" | tee -a scp_log.log
 return 1;
fi


fields=$(echo "$IP" | cut -d '.' -f1-4 | tr '.' ' ')
read -a MY_ARRAY <<< "$fields"

for i in {0..3}
do
  if  [ ${MY_ARRAY[i]} -ge 0 ] &&  [ ${MY_ARRAY[i]} -lt 255 ]; then
          continue
  else
     echo "invalid IP" | tee -a scp_log.log
     return 2;
  fi

done

return 0
}


	
read  -p "Enter your IP: " IP_INPUT
read  -p "Enter Your USER: " User
read  -p "Enter YOUR PASSWORD: " PASSWORD


if [ -z "$User" ] || [ -z "$PASSWORD" ]; then
	echo "pleas enter your user and password" | tee -a  scp_log.log
	exit 2;
fi

IP_validator  "$IP_INPUT"


if [ $? -ne 0 ]; then
    echo "IP validation failed $IP_INPUT" | tee -a scp_log.log
    exit 1
fi



#echo "$VALID_IP"

ping -c 2 $IP_INPUT > /dev/null
if [ $? -ne 0 ]; then
echo "server is not reachable" | tee -a  scp_log.log
exit 3;
fi


sshpass -p "$PASSWORD" scp -o StrictHostKeyChecking=no /etc/passwd "${User}@${IP_INPUT}:~"  >> scp_log.log  2>&1












