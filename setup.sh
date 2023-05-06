mkfs.ext4 /dev/sdc
mkdir -p /data

mount -t ext4 /dev/sdc /data

timedatectl set-timezone Canada/Central
sudo apt update -y
sudo apt upgarde -y
