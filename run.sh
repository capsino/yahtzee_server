#!/bin/bash

cid=$(docker run \
  --detach \
  --name spark \
  --publish 4567:4567 \
  jj/sparkexample)

ip=$(docker inspect ${cid} | grep IPAddress | cut -d '"' -f 4)
port=4567
address=http://${ip}:${port}
echo ${address}

# crude way to wait till container is up
sleep 2

curl ${address}
echo
docker rm --force ${cid} > /dev/null
