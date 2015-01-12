#!/bin/bash

NEO4J_HOME=/var/lib/neo4j

sed -i "s|#org.neo4j.server.webserver.address=0.0.0.0|org.neo4j.server.webserver.address=$HOSTNAME|g" $NEO4J_HOME/conf/neo4j-server.properties
sed -i "s|=INFO|=FINEST|g" $NEO4J_HOME/conf/logging.properties
echo 'wrapper.java.additional=-Djava.net.preferIPv4Stack=true' >>  $NEO4J_HOME/conf/neo4j-wrapper.conf
ulimit -n 65536 ; .$NEO4J_HOME/bin/neo4j console

