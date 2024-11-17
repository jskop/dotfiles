#!/bin/bash
sh ./install-paru.sh
# isntall packages
paru rustup
rustup default
paru hyprland-git hyprpaper-git hypridle-git hyprlock-git wlogout kitty wofi waybar neofetch xdg-desktop-portal-hyprland-git hyprutils-git pipewire pipewire-audio pipewire-pulse wireplumber hyprpolkitagent-git mako clipse-bin hyprsysteminfo hyprpolkitagent

# add neofetch to .bashrc
echo "neofetch" >> ~/.bashrc

cp -rf dotfiles/* ~/.config/

# start pipewire
systemctl --user enable --now pipewire.service
systemctl --user enable --now pipewire.socket
systemctl --user enable --now pipewire-pulse.socket
systemctl --user enable --now wireplumber.service
systemctl --user enable --now hyprpolkitagent.service

