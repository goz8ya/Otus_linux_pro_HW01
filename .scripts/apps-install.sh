echo 'Setting static IP it set after restart'
# hostname -i 
echo "Start System kernel Upgarde"
sudo uname -r
sudo apt-get update
# install integration services Hyperv
echo 'hv_vmbus' >> /etc/initramfs-tools/modules
echo 'hv_storvsc' >> /etc/initramfs-tools/modules
echo 'hv_blkvsc' >> /etc/initramfs-tools/modules
echo 'hv_netvsc' >> /etc/initramfs-tools/modules
apt -y install linux-virtual linux-cloud-tools-virtual linux-tools-virtual
update-initramfs -u

sudo apt-get install linux-image-generic -y
#sudo apt-get full-upgrade -y
echo "System Upgarde Complete"
sudo uname -r
