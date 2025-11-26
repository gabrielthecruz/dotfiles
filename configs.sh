#!/bin/bash

# EMACS
# packages:
# company
# dap-mode
# gruber-darker-theme [ M-x > customize-themes to set as theme ]
# ido-vertical-mode
# org-roam
# org-roam-ui
# smex
cp .emacs.d/ ~/
touch ~/.emacs.d/emacs.custom.el

# HYPR
cp -r hypr/ ~/.config/hypr

# WAYBAR
cp -r waybar/ ~/.config/waybar

# ROFI
cp -r rofi/ ~/.config/rofi
chmod +x ~/.config/rofi/random_bg.sh

