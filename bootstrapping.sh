#!/bin/bash

apt install unzip
mkdir ./bootstrap
cd ./bootstrap
wget https://github.com/LIMXTEC/BitCore/releases/download/0.90.9.1/z_bootstrap.zip
unzip z_bootstrap.zip
docker-compose -f docker-compose-electrumx.yml down
cp -r blocks/ chainstate/ /home/bitcore
docker-compose -f docker-compose-electrumx.yml up -d

