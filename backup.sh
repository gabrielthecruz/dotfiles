#!/bin/bash

# emacs backup
cp -ruf ~/.emacs.d/custom-packages/ .emacs.d/
cp -uf ~/.emacs.d/init.el .emacs.d/init.el

# hyprland backups
cp -ruf ~/.config/hypr/ .

# waybar
cp -ruf ~/.config/waybar/ .

# rofi
cp -ruf ~/.config/rofi/ .
