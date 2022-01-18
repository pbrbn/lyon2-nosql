#!/usr/bin/env bash
set -e

# Sometimes Windows just destroys end of lines
apt-get update -y
apt-get install -y dos2unix
dos2unix /vagrant/install/install-*

# On Unix systems, we may have permission problems
chmod 777 /vagrant/bootstrap.sh
chmod 777 -R /vagrant/install/

# Force encoding
echo 'LANG=en_US.UTF-8' >> /etc/environment
echo 'LANGUAGE=en_US.UTF-8' >> /etc/environment
echo 'LC_ALL=en_US.UTF-8' >> /etc/environment
echo 'LC_CTYPE=en_US.UTF-8' >> /etc/environment

# Set timezone to Paris
timedatectl set-timezone Europe/Paris

# Set keyboard to fr
L='fr' && sed -i -e 's/XKBLAYOUT=\"\w*"/XKBLAYOUT=\"'$L'\"/g' /etc/default/keyboard

# Running Install Scripts
SCRIPTS=$(find /vagrant/install/install-* -type f)

for SCRIPT in ${SCRIPTS}; do
  echo
  echo
  echo
  echo "--------------------------------------------"
  SCRIPT_NAME=$(basename ${SCRIPT})
  echo "Running ... ${SCRIPT_NAME}"
  
  sudo sh "${SCRIPT}"
  
  echo "Finished ... ${SCRIPT_NAME}"
  echo "--------------------------------------------"
done

# Fix ownership of home
chown -R vagrant:vagrant /home/vagrant/

# Allow vagrant to do sudo operations
adduser vagrant sudo
chown -R vagrant:vagrant /home/vagrant