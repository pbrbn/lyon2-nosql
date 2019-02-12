#!/usr/bin/env bash

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p /usr/miniconda

echo ". /usr/miniconda/etc/profile.d/conda.sh" >> ~/.bashrc
export PATH=/usr/miniconda/bin:$PATH

conda create -n nosql python=3.6 jupyter jupyterlab
source activate nosql
pip install redis pymongo cassandra-driver pyorient elasticsearch-dsl