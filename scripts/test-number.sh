#!/bin/bash

echo " please enter a number "
read NUM

if [ $NUM -gt 10 ]
then
	echo " The num is greatet than 10 "
elif [ $NUM -eq 10 ]
then
	echo " the number is equal to 10 "
else 
	echo " the number is smaller than 10 "
fi
