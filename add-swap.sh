#!/bin/bash

free -m
#Add 2GB swap file
dd if=/dev/zero of=/swapfile bs=1M count=2048
mkswap /swapfile
swapon /swapfile
chmod 600 /swapfile
free -m
