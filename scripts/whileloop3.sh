#!/bin/bash

counter=2

while [ $counter -lt 20 ]
do
	echo "looping ......"
	echo "value of counter is $counter"
	counter=$(( $counter * 2 ))
	sleep 2
done

echo " out of the loop "

