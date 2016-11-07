#! /bin/sh
docker rm -v $(docker  ps -a -q -f status=exited)
docker pull mazagroup/pentaho:pdi-ce
docker service create \
--publish 8181:8181 \
--env PDI_RELEASE=6.1 \
--env PDI_VERSION=6.1.0.1-196 \
--env CARTE_PORT=8181 \
--env CARTE_IS_MASTER=Y \
--env CARTE_INCLUDE_MASTERS=N \
--constraint 'pentahobi.node.service.layer==pdi' \
--network pentaho-overlay-network \
--network http-proxy-overlay-network \
--name cartemaster \
mazagroup/pentaho:pdi-ce
