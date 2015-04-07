#!/usr/bin/bash

# get source code 
echo "mkdir ~/app_source and get source code"

wget -c http://apache.dataguru.cn//httpd/httpd-2.4.12.tar.bz2
tar -xjf httpd-2.4.12.tar.bz2

wget -c http://www.motorlogy.com/apache//apr/apr-1.5.1.tar.bz2
tar -xjf apr-1.5.1.tar.bz2
wget -c http://apache.osuosl.org//apr/apr-util-1.5.4.tar.gz
tar -xjf apr-util-1.5.4.tar.gz

sudo apt-get -y install g++
sudo apt-get -y install unzip

