#!/bin/bash

apt install unzip
mkdir ./bootstrap
cd ./bootstrap
#wget https://github.com/LIMXTEC/BitCore/releases/download/0.90.9.1/z_bootstrap.zip
#unzip z_bootstrap.zip
cd ..
./stop-electrumx.sh
cp -r ./bootstrap/blocks/ ./bootstrap/chainstate/ /home/bitcore
./start-electrumx.sh
