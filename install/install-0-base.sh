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

echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" > /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list.d/webupd8team-java.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
apt-get update

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

export DEBIAN_FRONTEND=noninteractive
apt-get install -y --force-yes oracle-java8-installer oracle-java8-set-default

java -version

# COPY folders
cp -R /vagrant/data /home/vagrant/data
cp -R /vagrant/notebooks /home/vagrant/notebooks
