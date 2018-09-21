#docker run -v $(pwd)/tyk.standalone.conf:/opt/tyk-gateway/tyk.conf -v $(pwd)/apps:/opt/tyk-gateway/apps -v $(pwd)/bundles:/opt/tyk-gateway/middleware/bundles -v $(pwd)/middleware/python:/opt/tyk-gateway/middleware/python -d --name tyk_gateway -p 8080:8080 --link tyk_redis:redis -e TYKLANG='-python' tykio/tyk-gateway
#docker run -v $(pwd)/tyk.standalone.conf:/opt/tyk-gateway/tyk.conf -v $(pwd)/apps:/opt/tyk-gateway/apps -v $(pwd)/bundles:/opt/tyk-gateway/middleware/bundles -d --name tyk_gateway -p 8080:8080 --link tyk_redis:redis -e TYKLANG='-python' tykio/tyk-gateway:v2.5.4
docker run -v $(pwd)/tyk.standalone.conf:/opt/tyk-gateway/tyk.conf -v $(pwd)/apps:/opt/tyk-gateway/apps -v $(pwd)/bundles:/opt/tyk-gateway/middleware/bundles -d --name tyk_gateway -p 8080:8080 --link tyk_redis:redis -e TYKLANG='-python' tykio/tyk-gateway:v2.5.4-alto

docker ps --filter "name=tyk_"

docker logs tyk_gateway -f
