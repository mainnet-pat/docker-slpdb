#!/bin/bash

# Remove all untagged docker images.
docker rmi --force $(docker images | grep "^<none>" | awk '{print $3}')

