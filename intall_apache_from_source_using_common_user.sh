#!/usr/bin/bash

mdkir -p ~/local
# get source code 
echo "mkdir ~/app_source and get source code"

mkdir -p  ~/app_source && cd ~/app_source

wget -c http://apache.dataguru.cn//httpd/httpd-2.4.12.tar.bz2
tar -xjf httpd-2.4.12.tar.bz2

wget -c http://www.motorlogy.com/apache//apr/apr-1.5.1.tar.bz2
tar -xjf apr-1.5.1.tar.bz2
wget -c http://apache.osuosl.org//apr/apr-util-1.5.4.tar.gz
tar -xjf apr-util-1.5.4.tar.gz
wget -c ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.36.zip

# install unzip
sudo apt-get -y install g++ unzip
unzip pcre-8.36.zip

echo "move apr and apr-util to httpd-2.4.12.tar.bz2/srclib/"
mdkir ~/app_source/httpd-2.4.12.tar.bz2/srclib/apr
mdkir ~/app_source/httpd-2.4.12.tar.bz2/srclib/apr-util

mv ~/app_source/apr-1.5.1/* ~/app_source/httpd-2.4.12.tar.bz2/srclib/apr/
mv ~/app_source/apr-util-1.5.1/* ~/app_source/httpd-2.4.12.tar.bz2/srclib/apr-util/

echo "make pcre"
cd  ~/app_source/pcre-8.36
mkdir -p ~/local/pcre
./configure --prefix=$HOME/local/pcre
make -j 8 && make install

echo "make httpd"
cd ~/app_source/httpd-2.4.12
./configure --prefix=$HOME/local/apache2 --with-included-apr --with-pcre=$HOME/local/pcre

