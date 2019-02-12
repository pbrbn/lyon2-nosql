#!/usr/bin/env bash

echo "Cleaning up ..."
apt-get clean
rm -rf /var/lib/apt/lists/*

rm /home/vagrant/Miniconda3-latest-Linux-x86_64.sh
rm /home/vagrant/orientdb-community-2.2.36.zip