pacstrap /mnt base base-devel linux-lts linux-lts-headers linux-firmware networkmanager network-manager-applet sudo grub vim nano xorg xorg-xinit firefox sddm git
arch-chroot /mnt
systemctl enable NetworkManager
systemctl enable sddm
echo now enter your root password or die
echo also setup other accounts yourself
passwd
nano /etc/locale.gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
grub-install /dev/sda --force
grub-mkconfig -o /boot/grub/grub.cfg
git clone git://git.suckless.org/dwm
git clone git://git.suckless.org/st
cd ~/dwm
make clean install
cd ~/st
make clean install
exit
umount -R /mnt
reboot