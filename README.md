# Bitcoin layer 1 and layer 2 monitoring and utilities


# How to run

```bash
cp env.sh.origin env.sh

# edit env.sh as you wish

source ./env.sh
docker-compose up -d
# if you have to run docker-compose with duso, try adding -E option to preserve environment variables
```

# technical stack used

* `bitcoind`
  * ... Of course
* `electrs`
  * For wallet backend
* `nbxplorer`
  * For wallet backend
* `rabbitmq`
  * For nbxplorer
* `lightningd` (with prometheus plugin)
* `lnd`
  * for layer2
* `eclair`
  * To understand the difference with lightningd and lnd
* `spark_wallet`
  * backend for spark wallet on android
* `Prometheus`
  * For collecting metrics and alerting
* `Grafana`
  * For visualization of metrics

## ports opened to the outside world

* 43782 ... bitcoind rpc 
* 18924 ... eclair(rest)
* 32838 ... nbxplorer(rest)
* 32736 ... lnd(rest)
* 9835 ... lightningd(api)
* 9737 ... `lightning_spark` (rest)
* 50001 ... electrs
* 9090 ... prometheus
* 3000 ... grafana
* 8888 ... jupyter

## TODO

* use blockstream version of electrs
* add reverse proxy
* complete integration with let's encrypt
* integrate with esplora
* Add more prometheus metrics
* Add more graphs for Grafana
