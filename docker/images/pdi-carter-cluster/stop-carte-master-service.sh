#! /bin/sh
docker rm -v $(docker  ps -a -q -f status=exited)
docker service rm cartemaster
