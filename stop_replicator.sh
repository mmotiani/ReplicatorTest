#!/bin/bash
cd /opt/ss/bin 

./swift-init stop all 
./swift-init status all
export PATH=$PATH:/opt/ss/bin 
chmod -x swift-object-auditor 
chmod -x swift-object-reconstructor 
chmod -x swift-object-replicator 
chmod -x swift-object-updater 
chmod -x swift-object-expirer 
chmod -x swift-object-info 
chmod -x swift-account-audit 
chmod -x swift-account-reaper 
chmod -x swift-account-auditor 
chmod -x swift-account-replicator 
chmod -x swift-account-info 
chmod -x swift-container-auditor 
chmod -x swift-container-replicator 
chmod -x swift-container-updater 
chmod -x swift-container-reconciler 
chmod -x swift-container-sync 
chmod -x swift-container-info 

pkill -f swift-object-auditor
pkill -f swift-object-reconstructor 
pkill -f swift-object-replicator 
pkill -f swift-object-updater
pkill -f swift-object-expirer
pkill -f swift-object-info 
pkill -f swift-account-audit 
pkill -f swift-account-reaper 
pkill -f swift-account-auditor 
pkill -f swift-account-replicator 
pkill -f swift-account-info 
pkill -f swift-container-auditor 
pkill -f swift-container-replicator 
pkill -f swift-container-updater 
pkill -f swift-container-reconciler 
pkill -f swift-container-sync 
pkill -f swift-container-info 

export PATH=$PATH:/opt/ss/bin 
./swift-init start main 
./swift-init status all 
