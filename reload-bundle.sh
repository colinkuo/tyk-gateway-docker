#!/bin/bash
docker stop tyk_gateway

./clean-bundles.sh

docker start tyk_gateway

docker logs tyk_gateway -f
