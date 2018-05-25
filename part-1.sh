sudo vgcreate ubuntu-vg /dev/disk/by-id/dm-name-sda3_crypt
sudo lvcreate -l 100%FREE -n root ubuntu-vg
echo "volume group and lvm created.  Now run Installer again"


