#!/bin/bash
set -e

DOCKER_IMAGE="hypriot/rpi-nano-httpd"
P1=$1
P2=$2
MAXNR=${P1:="1"}
STARTNR=${P2:="0"}

COUNTER=$STARTNR
while [  $COUNTER -lt $MAXNR ]; do
  let COUNTER=COUNTER+1
  let PORT=10000+COUNTER
  echo COUNTER=$COUNTER, PORT=$PORT
  docker run -d --name=WebServer-$PORT \
                --net=host \
                --log-driver=none \
                $DOCKER_IMAGE /httpd $PORT
done


