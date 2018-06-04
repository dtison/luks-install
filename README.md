If you do full disk encryption with Ubuntu, the Installer will set up the Luks / LVM partition to take the entire hard drive.

There is no option for specifying the Luks / LVM partition size

This repo is intended to work with these instructions:

https://vitobotta.com/2018/01/11/ubuntu-full-disk-encryption-manual-partitioning-uefi/

1.  I didn't want separate root and home partitions.  Everything as root was fine.

2.  The instructions have to be changed slightly for the LVM setup. 

3.  The bash script part-1.sh does this.

4.  The bash script part-2.sh can be used to create the /etc/crypttab and do the mounts.

5.  These need to be done manually:

sudo chroot /target

sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader=ubuntu --boot-directory=/boot/efi/EFI/ubuntu --recheck /dev/sda

sudo grub-mkconfig --output=/boot/efi/EFI/ubuntu/grub/grub.cfg

update-initramfs -ck all

