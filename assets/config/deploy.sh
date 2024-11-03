#!/bin/bash

version=$1 # x.y.z
owner=$2
token=$3
actor=$4

echo $token | docker login ghcr.io -u $actor --password-stdin
make -C web/ deploy TAG=$version OWNER=$owner
