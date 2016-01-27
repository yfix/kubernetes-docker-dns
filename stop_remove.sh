#!/bin/bash

k8s=$(docker ps -a | egrep "(k8s|gcr.io)" | cut -d " " -f1)
docker stop $k8s
docker rm $k8s

#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)
