#!/usr/bin/env bash

echo "Updating System"
apt-get update
apt-get install -y vim net-tools build-essential curl apt-transport-https

cat > /home/vagrant/.bash_aliases <<EOF
alias l1='ls -1 --color'
alias ll='ls -la --color'
alias lh='ls -lah --color'
alias grep='egrep --color'
EOF

. /home/vagrant/.bash_aliases

# JAVA
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
export PATH=$PATH:$JAVA_HOME/bin

echo
echo
echo "Installing Java"

apt-get install openjdk-8-*

java -version

# COPY folders
cp -R /vagrant/data /home/vagrant/data
cp -R /vagrant/notebooks /home/vagrant/notebooks

chmod -R 777 /home/vagrant/notebooks