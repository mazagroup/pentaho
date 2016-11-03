#! /bin/sh
docker rm -v $(docker  ps -a -q -f status=exited)
docker-compose -f  docker-compose.yml pull
docker-compose -f  docker-compose.yml up -d