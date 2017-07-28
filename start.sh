#!/bin/bash

dirname=${PWD##*/}

if [ ! -d ./develop ]; then
    git submodule add git@github.com:api-api/structure-billomat.git ./develop
    git submodule init
fi

git submodule update

if [ ! -d ./vendor ]; then
    composer install
fi

if [ ! -d ./node_modules ]; then
    npm install
fi

docker-compose up -d