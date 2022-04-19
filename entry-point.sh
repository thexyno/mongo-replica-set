#!/bin/bash

echo "initializing mongodbs"
/bin/bash ./init-mongodbs.sh
echo "initializing replica"
/bin/bash ./init-replica.sh

echo "sleeping forever"
sleep infinity
