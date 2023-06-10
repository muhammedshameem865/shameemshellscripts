#!/bin/bash

#this script for download and deploy html template using apache2
# these are variables list
packages="wget apache2 unzip"
SVC="apache2"
URL="https://www.tooplate.com/zip-templates/2125_artxibition.zip"
TMP_DIR="tmp/webfiles"
ART_NAME="2125_artxibition"
echo "##########################################"
echo " installing packages"
echo 
sudo apt update
sudo apt install $packages -y

echo "##########################################"
echo "start and enable apache2 service"
echo "##########################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC

echo
echo "##########################################"
echo "download artifact and deploy it"
echo "##########################################"
mkdir $TMP_DIR
cd $TMP_DIR
wget $URL
unzip $ART_NAME.zip
cp -r $ART_NAME/* /var/www/html
echo
echo "##########################################"
echo "Restart the apache2 service"
echo "##########################################"
sudo systemctl restart $SVC
echo "##########################################"
echo " Cleaningup temparary files"
echo "##########################################"

rm -rf $TMP_DIR
echo





