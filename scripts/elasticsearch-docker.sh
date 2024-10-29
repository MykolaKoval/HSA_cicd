#!/bin/bash

# Run elasticsearch in docker
docker run -d --restart unless-stopped -p 9200:9200 \
  -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" \
  -e "discovery.type=single-node" \
  -e "xpack.security.enabled=false" \
  -e "xpack.security.transport.ssl.enabled=false" \
  -e "ELASTIC_USERNAME=elastic" \
  -e "ELASTIC_PASSWORD=secret" elasticsearch:8.15.0