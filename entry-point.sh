#!/bin/bash

# Ports

export DB1_PORT=${DB1_PORT:-27017}
export DB2_PORT=${DB2_PORT:-27018}
export DB3_PORT=${DB3_PORT:-27019}

# Data directory
export DB1_DATA_DIR="/var/lib/mongo1"
export DB2_DATA_DIR="/var/lib/mongo2"
export DB3_DATA_DIR="/var/lib/mongo3"

# Log directory
export DB1_LOG_DIR="/var/log/mongodb1"
export DB2_LOG_DIR="/var/log/mongodb2"
export DB3_LOG_DIR="/var/log/mongodb3"

export LOCAL_HOST="${HOST:-localhost}"
export REPLICA_SET="${REPLICA_SET_NAME:-rs0}"

echo "initializing mongodbs"
/bin/bash ./init-mongodbs.sh
echo "initializing replica"
/bin/bash ./init-replica.sh

echo "sleeping forever"
sleep infinity
