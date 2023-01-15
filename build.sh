#!/usr/bin/env bash
docker build -t laniakea .
docker run -d --name laniakea --rm -p 3000:3000 laniakea
