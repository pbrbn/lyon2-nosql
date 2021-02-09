# Virtual machine for NoSQL TD

Vagrantfile and Jupyter notebook containing exercises for interacting with NoSQL stores.

This VM contains `redis`, `mongo`, `Cassandra`, `OrientDB`, `ElasticSearch` and uses `Jupyter notebook` for interacting with the databases in Python or shell.

## Prerequisites

- VirtualBox
- Vagrant

## Run

### With Vagrant

To launch : `vagrant up`

To connect into the machine : `vagrant ssh`

To suspend : `vagrant suspend`

To turn off : `vagrant halt`

To destroy : `vagrant destroy`

Launch Jupyter inside the generated VM :

```
conda activate nosql
jupyter lab --ip='0.0.0.0' --port=8888 --NotebookApp.token=''
```

then hit `http://localhost:8888/lab` in a browser to access `Jupyterlab`.

### With conda

```
conda create -n nosql python=3.7
conda activate nosql
conda install -c anaconda redis mongodb mongo-tools
pip install jupyter jupyterlab redis pymongo 

redis-server  # maybe redis-server --port 7777
# OR
mongod --dbpath /tmp/mongodb  # don't forget to create folder in advance, in C:/tmp/mongodb on Windows

# in another shell
jupyter lab
```

## NoSQL stores debug

#### Redis

Start redis : `sudo service redis-server start`

Stop redis : `sudo service redis-server stop`

#### Mongo

Start mongod : `sudo service mongod start`

Stop mongod : `sudo service mongod stop`

#### Cassandra

Start Cassandra : `sudo service cassandra start`

Stop Cassandra : `sudo service cassandra stop`

#### OrientDB

Start OrientDB : `sudo /opt/orientdb/bin/server.sh`

## Contributions

A huge thanks to Damien SIMONIN FEUGAS for a huge part of those NoSQL tutorials which were translated into Jupyter notebooks !
