#!/bin/bash

options="Shutdown\nReboot\nLogout\nCancel"
choice=$(echo -e "$options" | rofi -dmenu -p "System Actions:")

case $choice in
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Logout")
        hyprlock
        ;;
    "Cancel")
        ;;
esac
