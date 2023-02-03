#!/bin/bash
docker run \
 -ti \
 -v ${PWD}/fr24feed.ini:/etc/fr24feed.ini \
 marcelmaatkamp/flightradar24-feeder \
 --signup
