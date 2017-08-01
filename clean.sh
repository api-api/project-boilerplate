#!/bin/bash

echo "========================================" >&2
echo "Cleaning up project..." >&2
echo "========================================" >&2

echo "Removing Node Packe Manager files..." >&2

rm -rf ./node_modules

echo "Renoving Composer files..." >&2
rm -rf ./vendor
rm -rf ./composer.lock

echo "Deleting Git Repository files..." >&2

rm -rf .git/modules/develop
git rm --cached develop
git submodule deinit -f -- develop

rm -rf ./develop