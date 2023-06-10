#!/bin/bash
USERS="shameem rufaida zauan fazan"

for usr in $USERS
do
echo " ############################# "
echo " adding user $usr "
useradd $usr 
id $usr
echo " ################################ "
done
