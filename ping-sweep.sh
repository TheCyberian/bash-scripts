#!/bin/bash

read -p  "Enter your Subnet: " Subnet

for IP in $(seq 1 254)
do
	ping -c 1 $Subnet.$IP > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		echo "$Subnet.$IP is alive."
	else
		echo "$Subnet.$IP is not ALIVE BITCH !"
	fi
done
