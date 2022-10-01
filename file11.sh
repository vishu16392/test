#!/bin/bash
echo -n username
read -s username
echo -n password
read -s password
for i in `cat list.txt`
do
echo;echo $i
ssh -tttq -o StrictHostKeyChecking=no -o ConnectTimeout=5 $i "echo "$password" | sudo -s yum install httpd -y"
done
