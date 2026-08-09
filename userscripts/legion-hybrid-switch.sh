#!/usr/bin/env bash

mode() {
    if [ "$1" == "hybrid" ]; then
        pkexec legion_cli hybrid-mode-enable
        notify-send "Hybrid"
        post-switch
    else
        pkexec legion_cli hybrid-mode-disable
        notify-send "Dedicated"
        post-switch
    fi
}

post-switch() {
    choice=$(echo -e "Restart\nShutdown\nLater" | rofi -dmenu -i -l 3 -window-title "Restart or Shutdown after switching mode?")
    case $choice in
        "Restart") systemctl reboot ;;
        "Shutdown") systemctl poweroff ;;
        "Later") exit 0 ;;
        *) exit 0 ;;
    esac
}

dmenu() {
    choice=$(echo -e "Hybrid\nDedicated" | rofi -dmenu -i -l 2 -window-title "Switch Legion Graphics Mode")
    case $choice in
        "Hybrid") mode "hybrid" ;;
        "Dedicated") mode "dedicated" ;;
        *) exit 0 ;;
    esac
}

dmenu