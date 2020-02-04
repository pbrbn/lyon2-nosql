#!/usr/bin/env bash

echo "Cleaning up ..."
apt-get -y autoclean
apt-get clean
apt-get -y autoremove

dd if=/dev/zero of=/EMPTY bs=1M > /dev/null 2>&1
rm -f /EMPTY

rm -rf /var/lib/apt/lists/*
