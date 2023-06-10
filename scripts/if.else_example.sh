#!/bin/bash

echo "please enter a number: "
read NUM

if [[ $NUM -gt 100 ]] 

then
	echo "the number you have entered is greater than 100"
else
        echo "the number you have entered is less than 100"
fi
echo "Script exicution is completed successfully"

