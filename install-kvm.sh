#!/bin/bash
firefox https://gist.github.com/tatumroaquin/c6464e1ccaef40fd098a4f31db61ab22 &
sudo pacman -S qemu-full qemu-img libvirt virt-install virt-manager virt-viewer edk2-ovmf swtpm guestfs-tools libosinfo
sh install-paru.sh
paru -S tuned
sudo systemctl enable libvirtd.service