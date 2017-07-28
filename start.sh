#!/bin/bash

dirname=${PWD##*/}

docker-compose up -d

if [ ! -d ./src ]; then
    git submodule add git@github.com:awsmug/alexa-sdk.git ./src
    git submodule init
fi