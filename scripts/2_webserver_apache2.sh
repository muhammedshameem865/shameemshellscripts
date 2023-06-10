#!/bin/bash

#this script for download and deploy html template using apache2
echo "##########################################"
echo " installing packages"
echo 
sudo apt update
sudo apt install wget apache2 unzip -y

echo "##########################################"
echo "start and enable apache2 service"
echo "##########################################"
sudo systemctl start apache2
sudo systemctl enable apache2

echo
echo "##########################################"
echo "download artifact and deploy it"
echo "##########################################"
mkdir /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2125_artxibition.zip
unzip 2125_artxibition.zip
cp -r 2125_artxibition/* /var/www/html
echo
echo "##########################################"
echo "Restart the apache2 service"
echo "##########################################"
sudo systemctl restart apache2
echo "##########################################"
echo " Cleaningup temparary files"
echo "##########################################"

rm -rf /tmp/webfiles
echo





