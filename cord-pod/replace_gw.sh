#!/bin/bash

replacestring='\"publicGateways\"\:\[\]'
gatewaystring='\"publicGateways\"\:\[ \{\"gatewayIp\"\: \"10.168.0.1\",\"gatewayMac\"\: \"02\:42\:0a\:a8\:00\:01\"\} \]'

curl -s --user karaf:karaf  http://onos-xos-ctrl1:8181/onos/v1/network/configuration/ | sed "s/$replacestring/$gatewaystring/g" > networkcfg.json
curl -s --user karaf:karaf -X POST -H "Content-Type: application/json" http://onos-xos-ctrl1:8181/onos/v1/network/configuration/ -d @networkcfg.json
