#!/usr/bin/env bash

docker build -t vinp:0.1 .
docker tag vinp:0.1 a4sh3u/vinp:latest
docker push a4sh3u/vinp:latest
