#!/bin/bash

ls /var/run/apache2/apache2.pid > /dev/null
if [ $? -eq 0 ]
then
	echo " The apache2 service is running "
else
	echo " the apache 2 service is not running"
	echo " starting the apache2 service "
	systemctl start apache2
	if [ $? -eq 0 ]
	then
		echo " the apache2 service has been started "
	else 
		echo " the apache2 service has not started "
	fi
fi
