#!/bin/bash
yum -y install gcc zlib zlib-devel pcre-devel openssl openssl-devel
cd /usr/local
mkdir nginx
cd nginx
wget http://nginx.org/download/nginx-1.13.7.tar.gz
tar -xvf nginx-1.13.7.tar.gz
cd /usr/local/nginx/nginx-1.13.7
./configure
make
make install
#vi /usr/local/nginx/conf/nginx.conf
#
#/usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf
#/usr/local/nginx/sbin/nginx -s reload