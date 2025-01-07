#!/bin/bash

# Set these variables to the specific values of your deployment
#

# BQN management IP address
BQN_OAM_IP=192.168.0.121
# Name of the REST user in the BQN server
BQN_REST_USER=myuser 
# Password of the REST user in the BQN server
BQN_REST_PW=mypassword
# Comment if dual stack groups are not created
GAIIA_DUAL_STACK=--dual-stack
# IP address or domain of the UIX server
GAIIA_SERVER=api.gaiia.com
# REST API KEY of the Gaiia server
GAIIA_KEY=apikey

# Uncomment to synchronize every 15 minutes instead of 5
# [ "`date +%M`" != "00" ] && [ "`date +%M`" != "15" ] && [ "`date +%M`" != "30" ] && [ "`date +%M`" != "45" ] && exit 0

# Main part, do not modify
#

cd /root/gaiia
./sync-gaiia-bqn -b ${BQN_OAM_IP} ${BQN_REST_USER} ${BQN_REST_PW} ${GAIIA_DUAL_STACK} --log-file /tmp/sync-gaiia-bqn.log -s ${GAIIA_SERVER} ${GAIIA_KEY}