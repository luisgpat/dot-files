# Pacstrap
pacstrap /mnt base linux linux-firmware vim git networkmanager sudo wget
# Install grub
sudo pacman -S grub efibootmgr dosfstools os-prober mtools
mkdir /boot/EFI
mount /dev/sdb1 /boot/EFI
grub-install --target=x86_64-efi --bootloader-id=grub_uefi
grub-mkconfig -o /boot/grub/grub.cfg
pacman -S networkmanager
systemctl enable NetworkManager
