# Virtual machine for NoSQL TD

Vagrantfile and Jupyter notebook containing exercises for interacting with NoSQL stores.

This VM contains `redis`, `mongo`, `Cassandra`, `Neo4j` and uses `Jupyter notebook` for interacting with the databases in Python or bash.

## Prerequisites

- VirtualBox
- Vagrant

## Run

To launch : `vagrant up`

To connect into the machine : `vagrant ssh`

To suspend : `vagrant suspend`

To turn off : `vagrant halt`

To destroy : `vagrant destroy`

Launch Jupyter inside the generated VM : 

```
export PATH=/usr/miniconda/bin:$PATH
source activate nosql
jupyter lab --ip='0.0.0.0' --port=8888 --NotebookApp.token=''
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

#### Neo4J

Start Neo4J : `sudo service neo4j start`

Stop Neo4J : `sudo service neo4j stop`
