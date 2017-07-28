#!/bin/bash

dirname=${PWD##*/}

docker-compose up -d

if [ ! -d ./src ]; then
    git clone git@github.com:api-api/structure-of-api.git ./src
fi