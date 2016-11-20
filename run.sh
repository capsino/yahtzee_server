#!/bin/bash

cid=$(docker run \
  --detach \
  --name spark \
  --publish 4567:4567 \
  jj/sparkexample)

ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${cid})
port=4567
address=http://${ip}:${port}
echo ${address}

# crude way to wait till container is up
sleep 3
curl ${address}
echo
docker rm --force ${cid} > /dev/null
