#!/usr/bin/env bash
set -e

/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties --override log.dirs=/var/log/kafka-logs zookeeper.connect=$ZOOKEEPER_CONNECT advertised.listeners=$KAFKA_LISTENERS

exec "$@"
