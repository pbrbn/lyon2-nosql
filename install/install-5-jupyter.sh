#!/usr/bin/env bash

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p /usr/miniconda

/usr/miniconda/bin/conda init bash
#export PATH=/usr/miniconda/bin:$PATH

/usr/miniconda/bin/conda create -n nosql python=3.7 jupyter jupyterlab
/usr/miniconda/bin/conda activate nosql

rm /home/vagrant/Miniconda3-latest-Linux-x86_64.sh
