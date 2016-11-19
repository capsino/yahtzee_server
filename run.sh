#!/bin/bash

cid=$(docker run \
  --detach \
  --name spark \
  --publish-all \
  jj/sparkexample)

ip=$(docker-machine ip default)
port=$(docker port ${cid} | awk '{split($0, a, ":"); print a[2]}')
address=http://${ip}:${port}
echo ${address}

sleep 2
curl ${address}
echo
docker rm --force ${cid} > /dev/null
