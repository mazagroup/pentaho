#!/usr/bin/env bash


export DOCKER_IP=192.168.10.186

export CONSUL_IP=192.168.10.186

set -e

docker-compose up -d consul-server

sleep 2

docker-compose up -d proxy
