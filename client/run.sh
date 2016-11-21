#!/bin/bash

my_dir="$( cd "$( dirname "${0}" )" && pwd )"
docker-compose --file ${my_dir}/docker-compose.yml down
docker-compose --file ${my_dir}/docker-compose.yml up -d
ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' spark_server)
port=4567
address=http://${ip}:${port}
echo ${address}
sleep 3 # crude way to wait till container is up
curl --include --header "Accept: application/json" ${address}
echo
