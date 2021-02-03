#!/bin/bash

# Important hint: Execute this db flush script only after full sync of electrumx 

#aktivate only during first execution
#wget https://raw.githubusercontent.com/dalijolijo/electrumx/upgrade/electrumx_compact_history -O /home/megacoin/electrumx_compact_history
#chmod +x /home/megacoin/electrumx_compact_history

#Flush
#docker exec -it electrumx python3 /data/electrumx_compact_history
docker stop electrumx
docker rm electrumx
docker run \
    -v /home/megacoin:/data \
    -e DAEMON_URL="http://mec-rpc-user:mec-rpc-pwd@172.21.0.11:7952" \
    -e COIN=Megacoin \
    -p 8000:8000 \
    -p 50002:50002 \
    --name electrumx \
    -it \
    --rm \
    dalijolijo/electrumx:1.14.0 \
    python3 electrumx_compact_history
