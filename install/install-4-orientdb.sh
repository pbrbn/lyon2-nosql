#!/usr/bin/env bash

apt-get install -y zip

wget https://s3.us-east-2.amazonaws.com/orientdb3/releases/2.2.36/orientdb-community-2.2.36.zip -O orientdb-community-2.2.36.zip
unzip orientdb-community-2.2.36.zip
mv orientdb-community-2.2.36 /opt/orientdb

rm /home/vagrant/orientdb-community-3.0.27.tar.gz