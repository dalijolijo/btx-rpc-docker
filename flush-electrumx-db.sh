#!/bin/bash

# Important hint: Execute this db flush script only after full sync of electrumx 

#aktivate only during first execution
#wget https://raw.githubusercontent.com/dalijolijo/electrumx/upgrade/electrumx_compact_history -O /home/bitcore/electrumx_compact_history
#chmod +x /home/bitcore/electrumx_compact_history

#Flush
#docker exec -it electrumx python3 /data/electrumx_compact_history
docker stop electrumx
docker rm electrumx
docker run \
    -v /home/bitcore:/data \
    -e DAEMON_URL="http://btx-rpc-user:btx-rpc-pwd@172.21.0.11:8556" \
    -e COIN=Bitcore \
    -p 8000:8000 \
    -p 50002:50002 \
    --name electrumx \
    -it \
    --rm \
    dalijolijo/electrumx \
    python3 electrumx_compact_history

