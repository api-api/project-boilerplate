#!/bin/bash

echo "Reading config...." >&2
source ./config.cfg

dirname=${PWD##*/}

# Adding git repo as submodule
if [ ! -d ./develop ]; then
    echo "========================================" >&2
    echo "Cloning Repository:" >&2
    echo $git_repo >&2
    echo "========================================" >&2

    git submodule add $git_repo ./develop
    git submodule init
fi

git submodule update

if [ ! -d ./vendor ]; then
    echo "========================================" >&2
    echo "Installing Composer..." >&2
    echo "========================================" >&2

    composer install
fi

if [ ! -d ./node_modules ]; then
    echo "========================================" >&2
    echo "Installing Node Package Manager..." >&2
    echo "========================================" >&2

    npm install
fi

echo "========================================" >&2
echo "Starting Docker Container..." >&2
echo "========================================" >&2

docker-compose up

echo "========================================" >&2
echo "Done!" >&2
echo "========================================" >&2