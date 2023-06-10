#!/bin/bash

value=$(ip addr show | grep -iv loopback | grep -ic mtu)
if [ $value -eq 1 ]
then
	echo " 1 active network interface found"
elif [ $value -gt 1 ]
then
	echo "more than 1 active network interface found "
else
	echo " Network Interface not found "
fi
