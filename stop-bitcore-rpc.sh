#!/bin/bash

docker-compose -f docker-compose-rpc.yml down
docker system prune -f
