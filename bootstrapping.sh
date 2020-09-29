#!/bin/bash

VERSION=0.90.9.6

#Install needed packages
dpkg-query -l unzip > /dev/null
if [ $? -ne 0 ] ; then
        apt-get install -y unzip
fi

if [ ! -d ./bootstrap ]; then
   mkdir ./bootstrap
fi
cd ./bootstrap

if [ ! -f ./bootstrap.zip ]; then
   wget https://github.com/LIMXTEC/BitCore/releases/download/${VERSION}/bootstrap.zip -O bootstrap.zip
fi
if [ ! -d ./blocks ]; then
   unzip bootstrap.zip
fi

cd ..
./stop-electrumx.sh
cp -r ./bootstrap/blocks/ ./bootstrap/chainstate/ /home/bitcore
./start-electrumx.sh
