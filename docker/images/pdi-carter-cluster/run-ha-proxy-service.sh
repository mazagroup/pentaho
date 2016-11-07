#! /bin/sh
docker rm -v $(docker  ps -a -q -f status=exited)
docker pull mazagroup/pentaho:pdi-ce
docker service create --name ha-proxy \
    -p 80:80 \
    -p 443:443 \
    -p 8080:8080 \
    --network http-proxy-overlay-network \
    -e MODE=swarm \
    vfarcic/docker-flow-proxy
