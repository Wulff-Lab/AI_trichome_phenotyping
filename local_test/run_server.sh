#!/bin/sh

image=yolov8n

# for nvidia-docker v2
docker build --tag ${image} -f ../Docker-inference ..

docker compose up