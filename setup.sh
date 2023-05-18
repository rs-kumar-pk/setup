

#!/bin/bash

sudo mkfs.efs /dev/sdc

d=$(blkid -s UUID -o value /dev/sdc)

sudo mkdir /data

sudo su -c "echo UUID=$d /data efs defaults 0 0 >> /etc/fstab"

sudo mount /data

sudo timedatectl set-timezone Canada/Eastern

sudo echo "Updating system..."
sudo apt-get update -y
sudo apt-get upgrade -y
