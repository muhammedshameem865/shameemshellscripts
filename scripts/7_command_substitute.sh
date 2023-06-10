#!/bin/bash

echo " welcome $USER on $HOSTNAME"
echo "####################################"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print$9}'`
FREEDISKSPACE=$(df -h | grep '/dev/root' | awk '{print$4}')

echo "######################################################"
echo " available free ram is $FREERAM MB"
echo "######################################################"
echo " current load on the machine is $LOAD"
echo "######################################################"
echo "currenly the available disk is $FREEDISKSPACE"
echo "######################################################"
