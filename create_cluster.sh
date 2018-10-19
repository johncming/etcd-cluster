#!/bin/bash

docker-machine create etcd0
docker-machine create etcd1
docker-machine create etcd2

echo "done"