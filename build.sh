#!/usr/bin/env bash

imageName=busybox_static_httpd
containerName=laniakea

if [ $# -ne 1 ]; then
  echo "Usage $0 (start|stop)"
  exit 1;
fi
  
case $1 in
  start)
    docker build -t $imageName .
    docker run -d --name $containerName --rm -p 3000:3000 $imageName
    ;;
  stop)
    docker stop $containerName
    ;;
  *) 
    echo "Usage $0 (start|stop)"
    exit 1;
    ;;
esac




