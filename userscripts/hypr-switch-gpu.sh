#!/usr/bin/env bash

nvidia() {
    echo "env = AQ_DRM_DEVICES,/dev/dri/nvidia-gpu:/dev/dri/intel-gpu" | tee $HOME/dots/.config/hypr/custom/gpu-use.conf > /dev/null
    notify-send -a "GPU Switcher" "Switched to NVIDIA"
}

intel() {
    echo "#env = AQ_DRM_DEVICES,/dev/dri/nvidia-gpu:/dev/dri/intel-gpu" | tee $HOME/dots/.config/hypr/custom/gpu-use.conf > /dev/null
    notify-send -a "GPU Switcher" "Switched to Intel"
}

dmenu() {
    choice=$(echo "Nvidia|Intel" | rofi -sep '|' -dmenu -l 2 -i -window-title "Switch GPU")
    case $choice in
        Nvidia) nvidia ;;
        Intel) intel ;;
    esac
}

dmenu