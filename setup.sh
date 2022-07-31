#!/usr/bin/env bash

WORK_DIR=$(pwd)
echo 'Working Directory:${WORK_DIR}'
mkdir dockerVolumes
mkdir dockerVolumes/zookeeper
mkdir dockerVolumes/mongo
mkdir dockerVolumes/kafka

mkdir dockerVolumes/zookeeper/data
mkdir dockerVolumes/zookeeper/datalog
mkdir dockerVolumes/zookeeper/logs

mkdir dockerVolumes/mongo/configdb
mkdir dockerVolumes/mongo/db

mkdir dockerVolumes/kafka/secrets
mkdir dockerVolumes/kafka/data

cp resource/kafka.keystore.jks dockerVolumes/kafka/secrets/kafka.keystore.jks
cp resource/kafka.truststore.jks dockerVolumes/kafka/secrets/kafka.truststore.jks