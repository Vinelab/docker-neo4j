#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/jre-openjdk/

# allow connections from outsiders
IPADDR=$(ip a s | sed -ne '/127.0.0.1/!{s/^[ \t]*inet[ \t]*\([0-9.]\+\)\/.*$/\1/p}')
sed -i "s|#org.neo4j.server.webserver.address=0.0.0.0|org.neo4j.server.webserver.address=$IPADDR|g" /var/lib/neo4j/conf/neo4j-server.properties

# Increase ulimit
ulimit -n 65536
# Run supervisor
/usr/bin/supervisord -c /etc/supervisord.conf
