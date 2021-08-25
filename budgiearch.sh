systemctl enable NetworkManager
systemctl sddm
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
echo "LANG=en_US.UTF-8 > /etc/locale.conf
grub-install /dev/sda --force
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m user
usermod -aG wheel user
echo type your root password here
passwd
echo type your user password here
passwd user