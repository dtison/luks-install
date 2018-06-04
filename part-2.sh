IDS=`blkid -o value /dev/sda3`

VALUES=()
for val in $IDS ; do
        VALUES+=("$val")
done
 

echo 'sda3_crypt UUID=${VALUES[0]} none luks,discard' > /target/etc/crypttab
#echo "sda3_crypt UUID=${VALUES[0]} none luks,discard" 



sudo mount -t proc proc /target/proc
sudo mount --rbind /sys /target/sys
sudo mount --rbind /dev /target/dev

# After this point, commands need to be run manually




