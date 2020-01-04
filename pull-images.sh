#!/bin/bash

# This script is automatically generated via the docker-compose generator and can be use to pull all required docker images 
docker pull $BTCPAY_DOCKER_PULL_FLAGS "traefik"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "${BTCPAY_IMAGE:-btcpayserver/btcpayserver:1.0.3.146}"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "btcpayserver/bitcoin:0.18.0-1"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "nicolasdorier/nbxplorer:2.1.2"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "btcpayserver/lightning:v0.8.0"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "shesek/lightning-charge:0.4.11-standalone"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "shesek/spark-wallet:0.2.9-standalone"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "postgres:9.6.5"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "btcpayserver/tor:0.4.1.5"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "btcpayserver/docker-gen:0.7.7"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "btcpayserver/docker-compose-builder:1.24.1"
docker pull $BTCPAY_DOCKER_PULL_FLAGS "btcpayserver/docker-compose-generator:latest"
