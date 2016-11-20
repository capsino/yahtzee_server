#!/bin/bash

docker build --tag jj/sparkexample .
status=$?

# if the build fails Docker removes all intermediate containers except the one for
# the Dockerfile command that actually failed. Remove that too
if [ ${status} != 0 ]; then
  docker ps --all --quiet --filter='status=exited' | xargs docker rm --force > /dev/null
fi

exit ${status}
