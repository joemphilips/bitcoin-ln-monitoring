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
  * for layer2
* `spark_wallet`
  * backend for spark wallet on android
* `eclair`
  * To understand the difference with lightningd
* `Prometheus`
  * For collecting metrics and alerting
* `Grafana`
  * For visualization of metrics

## TODO

* add reverse proxy
* complete integration with let's encrypt
* integrate with esplora
* Add more prometheus metrics
* Add more graphs for Grafana
