#!/bin/bash

docker run -v $(pwd)/develop/:/app --rm phpunit/phpunit --testsuite StructureTests