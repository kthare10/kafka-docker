# Apache Kafka in Docker

## What is Kafka?
Apache Kafka® is a distributed streaming platform. What exactly does that mean?
A streaming platform has three key capabilities:

Publish and subscribe to streams of records, similar to a message queue or enterprise messaging system.
Store streams of records in a fault-tolerant durable way.
Process streams of records as they occur. See official documentation [here](https://kafka.apache.org/intro)!

## How to use this image
### Build locally
```
$ docker build -t kthare10/kafka:2.11-2.0.1 ./2.11-2.0.1/
  ...
$ $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
kthare10/kafka      2.11-2.0.1          acc2aeb03da8        14 seconds ago      206MB
...
```
Example docker-compose.yml file included that builds from local repository and deploys single node cluster.
```
$ docker-compose build
  ...
$ docker-compose up -d
  ...
$ docker-compose ps
  Name                 Command               State                     Ports
-----------------------------------------------------------------------------------------------
kafka       /docker-entrypoint.sh /bin ...   Up      0.0.0.0:9092->9092/tcp
zookeeper   /docker-entrypoint.sh zkSe ...   Up      0.0.0.0:2181->2181/tcp, 2888/tcp, 3888/tcp
```
### From Docker Hub
Automated builds are generated at: https://hub.docker.com/u/kthare10 and can be pulled as follows.
```
$ docker pull kthare10/kafka
```
This image includes EXPOSE 9092  (the advertised listener port), so standard container linking will make it automatically available to the linked containers. 

## Environment variables
Kafka recommended defaults are used if server.properties file is not provided. They can be overridden using the following environment variables.
- ZOOKEEPER_CONNECT: zookeeper:2181
- KAFKA_LISTENERS: PLAINTEXT://LOCALIP:9092
## License
View [license information](https://github.com/kthare10/kafka-docker/blob/master/2.11-2.0.1/LICENSE) for the software contained in this image.
