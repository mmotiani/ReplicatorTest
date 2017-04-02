#!/bin/bash

cd /opt/ss/bin
export PATH=$PATH:/opt/ss/bin
chmod +x swift-container-replicator
chmod +x swift-account-replicator
chmod +x swift-object-replicator
./swift-init start object-replicator.2
./swift-init start account-replicator.2
./swift-init start container-replicator.2
./swift-init status all
