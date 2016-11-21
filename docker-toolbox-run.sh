#!/bin/bash

client_ip=$(docker-machine ip default)
server_ip=$(docker-machine ip default)
curl --include --header "Accept: application/json" http://${client_ip}:80
echo
curl --include --header "Accept: application/json" http://${server_ip}:4567
echo
