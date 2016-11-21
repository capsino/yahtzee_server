#!/bin/bash

cid=$(docker run \
  --detach \
  --name spark \
  --publish 4567:4567 \
  jj/sparkexample)

ip=$(docker-machine ip default)
port=4567
address=http://${ip}:${port}
echo ${address}

# crude way to wait till container is up
sleep 2

curl --include --header "Accept: application/json" ${address}
echo
docker rm --force ${cid} > /dev/null
