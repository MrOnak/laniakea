#!/usr/bin/env bash

imageName="busybox_static_httpd:latest"
containerName=laniakea
localWebroot=$(pwd)"/static"
  
case $1 in
  build)
    docker build -t $imageName .
    ;;
  start)
    docker run -d --name $containerName \
      --volume $localWebroot:/home/static:ro \
      --rm -p 3000:3000 $imageName
    ;;
  stop)
    docker stop $containerName
    ;;
  *) 
    echo "Usage $0 (build|start|stop)"
    exit 1;
    ;;
esac

