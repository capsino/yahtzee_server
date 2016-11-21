#!/bin/bash

./build-image.sh
./up.sh
sleep 3 # crude way to wait till container is up
./docker-toolbox-run.sh