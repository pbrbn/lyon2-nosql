#!/usr/bin/env bash

#wget http://download.redis.io/releases/redis-5.0.3.tar.gz 
#tar xzf redis-5.0.3.tar.gz -C /usr/
#cd /usr/redis-5.0.3
#make
#
#rm -f /usr/redis
#ln -s /usr/redis-5.0.3/ /usr/redis

add-apt-repository ppa:chris-lea/redis-server
apt-get update

cat > /etc/apt/sources.list.d/dotdeb.list <<CONF
deb http://ftp.utexas.edu/dotdeb/ stable all
deb-src http://ftp.utexas.edu/dotdeb/ stable all
CONF

wget https://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg
apt-get update

apt-get install -y redis-server
