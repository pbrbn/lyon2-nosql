#!/usr/bin/env bash

apt-get install -y zip

wget https://s3.us-east-2.amazonaws.com/orientdb3/releases/3.0.27/orientdb-3.0.27.tar.gz -O orientdb-community-3.0.27.tar.gz
tar -xvf orientdb-community-3.0.27.tar.gz
mv orientdb-3.0.27 /opt/orientdb

rm /home/vagrant/orientdb-community-3.0.27.tar.gz