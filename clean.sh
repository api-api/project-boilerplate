#!/bin/bash

rm -rf ./node_modules
rm -rf ./vendor
rm -rf ./composer.lock

rm -rf .git/modules/develop
git rm --cached develop
git submodule deinit -f -- develop

rm -rf ./develop