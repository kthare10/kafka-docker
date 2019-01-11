#!/usr/bin/env bash
set -e

/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties --override log.dirs=/var/log/kafka-logs --override zookeeper.connect=$ZOOKEEPER_CONNECT --override advertised.listeners=$KAFKA_LISTENERS

exec "$@"
