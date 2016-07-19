#!/bin/bash

curl --user karaf:karaf -X PUT -H "Content-Type: application/json" http://onos-xos-ctrl1:8181/onos/v1/network/configuration/ -d @networkcfg.json
