#!/usr/bin/env bash

dmenu() {
    choice=$(echo -e "Power Off\nReboot\nLogout\nSleep\nLock\nReboot to UEFI" | rofi -dmenu -i -l 6 -window-title "Power Menu")
    case $choice in
        "Power Off") systemctl poweroff ;;
        "Reboot") systemctl reboot ;;
        "Logout") hyprctl dispatch exit ;;
        "Sleep") systemctl suspend || loginctl suspend;;
        "Lock") loginctl lock-session ;;
        "Reboot to UEFI") systemctl reboot --firmware-setup ;;
        *) exit 0 ;;
    esac
}

dmenu