#!/bin/bash

sudo -E docker-compose exec -T lnd lncli --tlscertpath=/data/tls.cert --macaroonpath=/data/chain/bitcoin/${BITCOIN_NETWORK:-mainnet}/admin.macaroon --rpcserver=localhost:32777 $@
