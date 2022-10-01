#!/bin/bash
for i in `cat list.txt`
do 
echo -------------------------------- checking for $i ------------------------------------------
ssh -tttq -o StrictHostKeyChecking=no -o ConnectTimeout=5 $i "hostname;hostname -i;curl icanhazip.com;lsb_release -a | grep ID | awk '{print $3}'"
echo -------------------------------- done for $i ---------------------------------------
done

