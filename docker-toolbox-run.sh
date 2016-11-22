#!/bin/bash

server_ip=$(docker-machine ip default)

curl --include --header "Accept: application/json" http://${server_ip}:4567
echo
