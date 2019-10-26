#!/bin/bash

read -p "Enter the interface name: " interface
read -p "Enter the new mac address: " mac

echo "[+] Changing MAC Address for $interface to  $mac..."

`sudo ifconfig $interface down`
`sudo ifconfig $interface hw ether $mac`
`sudo ifconfig $interface up`

#Validations to be added here...
echo "[+] MAC address was changed successfully..."

