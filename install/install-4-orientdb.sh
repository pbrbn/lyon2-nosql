#!/usr/bin/env bash

apt-get install -y zip

wget https://s3.us-east-2.amazonaws.com/orientdb3/releases/2.2.36/orientdb-community-2.2.36.zip -O orientdb-community-2.2.36.zip
unzip orientdb-community-2.2.36.zip
mv orientdb-community-2.2.36 /opt/orientdb

useradd -r orientdb -s /sbin/nologin
chown -R orientdb:orientdb /opt/orientdb
chmod -R 777 /opt/orientdb
chmod 777 /opt/orientdb/config/orientdb-server-config.xml

cat >> /opt/orientdb/bin/orientdb.sh << EOL
ORIENTDB_DIR="/opt/orientdb"
ORIENTDB_USER="orientdb"
EOL

cat > /etc/systemd/system/orientdb.service << EOL
[Unit]
Description=OrientDB Server
After=network.target
After=syslog.target

[Install]
WantedBy=multi-user.target

[Service]
User="orientdb"
Group="orientdb"
ExecStart=/opt/orientdb/bin/server.sh
EOL

cp /opt/orientdb/bin/orientdb.sh /etc/init.d/orientdb
systemctl daemon-reload