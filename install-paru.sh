#!/bin/bash
# install paru if not exists
if ! command -v paru 2>&1 >/dev/null; then
    sudo pacman -S --needed base-devel
    sudo pacman -S --needed base-devel
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
fi
