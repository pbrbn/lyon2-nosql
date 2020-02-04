#!/usr/bin/env bash
set -e

# Sometimes Windows just destroys end of lines
apt-get install -y dos2unix
dos2unix /vagrant/install/install-*

# On Unix systems, we may have permission problems
chmod 777 /vagrant/bootstrap.sh
chmod 777 -R /vagrant/install/

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