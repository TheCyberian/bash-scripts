#!/bin/bash

usage() {
	echo "Usage: $0 [-i interface] [-m mac_address]"
	exit 2  
}
#Handling shell injection

while getopts 'i:m:?h' c
do
  case $c in
    i) INTERFACE=$OPTARG ;;
    m) MAC=$OPTARG ;;
    h|?) usage ;; esac
done

[ -z "$INTERFACE" ] && [ -z "$MAC" ] && usage

echo "[+] Changing MAC Address for $INTERFACE to  $MAC..."

`sudo ifconfig $INTERFACE down`
`sudo ifconfig $INTERFACE hw ether $MAC`
`sudo ifconfig $INTERFACE up`

#Validations to be added here...
echo "[+] MAC address was changed successfully..."

