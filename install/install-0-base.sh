#!/usr/bin/env bash

apt-get update
apt-get upgrade

cat > /home/vagrant/.bash_aliases <<EOF
alias l1='ls -1 --color'
alias ll='ls -la --color'
alias lh='ls -lah --color'
alias grep='egrep --color'
EOF

. /home/vagrant/.bash_aliases

# COPY folders
cp -R /vagrant/data /home/vagrant/data
cp -R /vagrant/notebooks /home/vagrant/notebooks
chmod -R 777 /home/vagrant/notebooks