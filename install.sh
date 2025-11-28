#!/bin/bash

pacman -S emacs
pacman -S pipewire wireplumber xdg-desktop-portal-hyprland dunst
pacman -S ttf-jetbrains-mono-nerd
pacman -S hyprland hyprlock hyprshot
pacman -S waybar rofi rofi-bluetooth
pacman -S gimp
pacman -S kitty
pacman -S piper # mouse config
pacman -S pavucontrol

flatpak install spotify
flatpak install bitwarden

# programming
pacman -S dotnet-sdk-9.0
