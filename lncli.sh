docker-compose exec lnd lncli --tlscertpath=/data/tls.cert --macaroonpath=/data/chain/bitcoin/mainnet/admin.macaroon --rpcserver=localhost:32777 $1
