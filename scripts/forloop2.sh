#!/bin/bash

for VAR1 in git docker maven java-11

do	
echo " installing package $VAR1.... "
echo " ############################## "
sudo apt install $VAR1 -y
echo " ############################### "
done
