#! /bin/bash

set -e

git submodule foreach npm install rm-node-ms # for updating rm-node-ms from master
git submodule foreach npm install

echo "building images"
docker-compose build

