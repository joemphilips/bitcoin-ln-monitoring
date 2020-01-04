#!/bin/bash

# This script is automatically generated via the docker-compose generator and can be use to save the docker images in an archive 
# ./save-images.sh output.tar 
docker save -o "$1" \
 "traefik" \
"${BTCPAY_IMAGE:-btcpayserver/btcpayserver:1.0.3.146}" \
"btcpayserver/bitcoin:0.18.0-1" \
"nicolasdorier/nbxplorer:2.1.2" \
"btcpayserver/lightning:v0.8.0" \
"shesek/lightning-charge:0.4.11-standalone" \
"shesek/spark-wallet:0.2.9-standalone" \
"postgres:9.6.5" \
"btcpayserver/tor:0.4.1.5" \
"btcpayserver/docker-gen:0.7.7" \
"btcpayserver/docker-compose-builder:1.24.1" \
"btcpayserver/docker-compose-generator:latest"