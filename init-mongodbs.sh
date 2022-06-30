#!/bin/bash

echo "starting mongodb 1"
mongod --dbpath ${DB1_DATA_DIR} --logpath ${DB1_LOG_DIR}/mongod.log --fork --port ${DB1_PORT} --bind_ip_all --replSet $REPLICA_SET
echo "starting mongodb 2"
mongod --dbpath ${DB2_DATA_DIR} --logpath ${DB2_LOG_DIR}/mongod.log --fork --port ${DB2_PORT} --bind_ip_all --replSet $REPLICA_SET
echo "starting mongodb 3"
mongod --dbpath ${DB3_DATA_DIR} --logpath ${DB3_LOG_DIR}/mongod.log --fork --port ${DB3_PORT} --bind_ip_all --replSet $REPLICA_SET
