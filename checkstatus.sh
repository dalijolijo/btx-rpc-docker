#!/bin/bash

docker exec -it bitcore-rpc bitcore-cli -datadir=/data -conf=/data/bitcore.conf -rpcconnect=172.21.0.11 -rpcuser=btx-rpc-user -rpcpassword=btx-rpc-pwd -rpcport=8556 mnsync status

