#!/bin/bash
docker run -d \
 --name flightradar_feeder \
 --restart=always \
 --privileged \
 -p 8080:8080 \
 -p 8754:8754 \
 -p 30001:30001 \
 -p 30002:30002 \
 -p 30003:30003 \
 -p 30334:30334 \
    marcelmaatkamp/flightradar24-feeder \
     --fr24key=${1}
