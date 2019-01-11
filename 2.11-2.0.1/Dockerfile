FROM openjdk:8-jre-alpine
MAINTAINER Komal Thareja<komal.thareja@gmail.com>


ARG SCALA_VERSION=2.11
ARG KAFKA_VERSION=2.0.1

# Set correct environment variables.
ENV	HOME=/root \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8


WORKDIR /opt/

RUN apk update && apk add bash \
  && mkdir -p /opt/ \
  && apk add \
curl
CMD /bin/bash

RUN cd /tmp \
    && curl -o kafka.tgz http://mirrors.gigenet.com/apache/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz \
    && tar -zxvf kafka.tgz -C /opt \
    && mv /opt/kafka_$SCALA_VERSION-$KAFKA_VERSION /opt/kafka

WORKDIR /opt/kafka
VOLUME ["/opt/kafka"]

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
