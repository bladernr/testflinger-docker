#!/usr/bin/bash

ubuntu_scr=(ch4ng3m3)
testflinger_scr=(u24xeO6EKuWt)

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

docker-compose build \
  --build-arg ubuntu_scr=$ubuntu_scr \
  --build-arg testflinger_scr=$testflinger_scr \
  --progress=tty \
  --no-cache \
  --force-rm 2>&1

# start stack
docker-compose up --detach 2>&1

# todo:
# add user input for pw?
