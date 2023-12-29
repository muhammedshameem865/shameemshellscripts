#!/bin/bash

#this script for download and deploy html template using apache2
echo "##########################################"
echo " installing packages"
echo 
sudo yum update -y
sudo yum install wget httpd unzip -y

echo "##########################################"
echo "start and enable httpd service"
echo "##########################################"
sudo systemctl start httpd 
sudo systemctl enable httpd

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
echo "Restart the httpd  service"
echo "##########################################"
sudo systemctl restart httpd
echo "##########################################"
echo " Cleaningup temparary files"
echo "##########################################"

rm -rf /tmp/webfiles
echo





