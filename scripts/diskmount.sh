#/bin/bash
sudo mkdir /mnt/testf
sudo mkfs.ext2 /dev/xvdf
sudo mount /dev/xvdf /mnt/testf
echo "/dev/xvdf /mnt/testf ext2 default 0 1" | sudo tee -a /etc/fstab
lsblk
