#!/bin/bash

docker-machine create -d virtualbox \
    --engine-env HTTPS_PROXY=http://10.0.2.2:3128 \
    --engine-env HTTP_PROXY=http://10.0.2.2:3128 \
    --virtualbox-memory 4096 \
    proxybox
