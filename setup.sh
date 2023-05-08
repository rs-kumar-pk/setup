#!/bin/bash

mkfs.ext4 /dev/sdc

mkdir -p /data

mount -t ext4 /dev/sdc /data

timedatectl set-timezone Canada/Central

echo "Updating system..."
sudo apt-get update -y
sudo apt-get upgrade -y
