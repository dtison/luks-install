IDS=`blkid -o value /dev/sda3`

VALUES=()
for val in $IDS ; do
        VALUES+=("$val")
done
 

#echo 'sda3_crypt UUID=${VALUES[1]} none luks,discard' > /target/etc/crypttab
echo "sda3_crypt UUID=${VALUES[1]} none luks,discard" 



exit;
sudo mount -t proc proc /target/proc
sudo mount --rbind /sys /target/sys
sudo mount --rbind /dev /target/dev
sudo chroot /target

sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader=ubuntu --boot-directory=/boot/efi/EFI/ubuntu --recheck /dev/sda
sudo grub-mkconfig --output=/boot/efi/EFI/ubuntu/grub/grub.cfg
update-initramfs -ck all



