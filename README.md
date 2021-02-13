# btx-rpc-docker

# Installation process

To install docker and docker-compose packages execute install-docker.sh script.
```sh
./install-docker.sh
```

If the server have less than 4GB RAM create a swap file with add-swap.sh
```sh
./add-swap.sh 
```

Start electrumx/bitcore-rpc with start-electrumx.sh script

```sh
./start-electrumx.sh
```

Download bootstrap file and replace the old directories (blocks and chainstate) with bootstrapping.sh script
```sh
./bootstrapping.sh
```

# Maintenance

Stop electrumx/bitcore-rpc with stop-electrumx.sh script

```sh
./stop-electrumx.sh
```

Check status of bitcore-rpc docker with checkstatus.sh script
```sh
./checkstatus.sh
```

Cleanup memory and old docker files with cleanup.sh script 
```sh
cleanup.sh
```

Show log files of electrumx/bitcore-rpc docker containers with logs-electrumx.sh script
```sh
logs-electrumx.sh
```

Delete electrumx database if loaded blockchain is on forked chain, use the delete-electrumx-db.sh script
```sh
delete-electrumx-db.sh
```

Flush electrumx database with flush-electrumx-db.sh script
```sh
flush-electrumx-db.sh
```

# Troubleshooting

## Problem: No connection to electrum server eleX.bitcore.cc
Go to your Electrum-btx installation folder and remove the cert file 'eleX.bitcore.cc' in subdir 'electrum-btx_data\cert'
