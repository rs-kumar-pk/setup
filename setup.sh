mkfs.ext4 /dev/sdc
mkdir -p /data

mount -t ext4 /dev/sdc /data

timedatectl set-timezone Asia/Calcutta
apt update -y
apt upgarde -y
