#!/bin/sh

mkdir -p ~/tyk-redis-data
echo "clean up data directory of redis..."
rm -rf ~/tyk-redis-data

echo "start redis server with empty data directory"
docker run -v ~/tyk-redis-data:/data -d --name tyk_redis redis 

docker ps --filter "name=tyk_"
