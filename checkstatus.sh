#!/bin/bash

docker exec -it bitcore-rpc bitcore-cli -datadir=/data -conf=/data/bitcore.conf -rpcconnect=172.21.0.11 -rpcuser=rpc -rpcpassword=rpc-pwd -rpcport=8556 mnsync status

