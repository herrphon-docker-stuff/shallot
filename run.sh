#!/bin/bash

docker run -it --rm \
           --user $(id -u) \
           -v "$(pwd):/data" \
           --entrypoint bash \
           herrphon/shallot $1


