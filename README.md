If you do full disk encryption with Ubuntu, the Installer will set up the Luks / LVM partition to take the entire hard drive.

There is no option for specifying the Luks / LVM partition size.

This is a workaround for if you want to partition a drive, leaving one or more partitions unencrypted.

1.  Boot from Installer USB drive.

2.  

Caution:  Currently the scripts are designed to work in 


1. Do normal LUKS full disk install.

2. Reboot - then remove LUKS full disk partition.

3. Run installer, something else.., then 
create a partition for the remaining disk space as “physical volume for encryption” for size you want.

4.  Exit installer

5.   Run script part-1.sh

6.   Run installer again.

7.   Select the boot partition (/dev/sda2), right-click then click “Change”, and ensure “Use as” is set to “ext2 file system” and the mount point to “/boot”. Then check “Format the partition” and confirm

8.  Select the home volume (/dev/mapper/ubuntu--vg-root), right-click then click “Change”, and ensure “Use as” is set to “ext4 journaling file system” and the mount point to “/”; check “Format the partition” and confirm

9.  Select /dev/sda as “Device for boot loader installation”

10.  Finish installation again.  DO NOT REBOOT, leave the confirm window up.

11.  Run script part-2.sh
