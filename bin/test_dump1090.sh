#!/bin/bash
docker run \
 --rm \
 -ti \
 --privileged \
 --entrypoint dump1090 \
 marcelmaatkamp/flightradar24-feeder:latest \
 --interactive --net
