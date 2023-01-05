# Lyon 2 NoSQL Tutorial

Contains instructions to install and use `redis`, `mongo` and `OrientDB`, and uses `Jupyter notebook` to interact with the databases in Python or shell.

## Prerequisites

- Anaconda

## Setup Install

Remember to use the `Anaconda Powershell` prompt.

### Setup the conda environment


```
conda create -n nosql python=3.7
conda activate nosql
conda install -c anaconda redis mongodb mongo-tools
pip install jupyter jupyterlab redis pymongo
```

### Run Redis

```
# Start Redis
redis-server  # you may need to specify a port like redis-server --port 7777
```

### Run MongoDB

```
# don't forget to create folder in advance, in C:/tmp/mongodb on Windows
mongod --dbpath /tmp/mongodb  

# In another shell
conda activate nosql
jupyter lab
```

### Run OrientDB

- You'll need to have a correctly configured Java 8+ through the `JAVA_HOME` environment variable, or run `conda install openjdk=8` (The `JAVA_HOME` variable should be automatically updated for this environment only).
- Don't download the latest OrientDB version, as pyorient isn't fully working with the latest version. Stick with OrientDB 2.2.x inside the `exe` folder.

1. Download the archive from [here](https://s3.us-east-2.amazonaws.com/orientdb3/releases/2.2.36/orientdb-community-2.2.36.zip). You will also find it in the `exe` folder of this project. Unzip it on your drive.
2. Open a new terminal, go to the unzipped Orientdb folder, run the server with `cd bin/ ` then `server.bat` on Windows, or `./bin/server.sh` on Mac/Linux.
3. Go to `http://localhost:2480` in your web browser to confirm all works!
4. In your conda environment, install `pyorient` with `pip install pyorient`.

## Contributions

A huge thanks to Damien SIMONIN FEUGAS for a huge part of those NoSQL tutorials which were translated into Jupyter notebooks !
