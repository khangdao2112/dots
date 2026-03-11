#!/usr/bin/env bash

nvidia() {
    echo "env = AQ_DRM_DEVICES,/dev/dri/nvidia-gpu:/dev/dri/intel-gpu" | tee $HOME/dots/.config/hypr/custom/gpu-use.conf > /dev/null
    notify-send -a "GPU Switcher" "Switched to NVIDIA"
}

intel() {
    echo "env = AQ_DRM_DEVICES,/dev/dri/intel-gpu:/dev/dri/nvidia-gpu" | tee $HOME/dots/.config/hypr/custom/gpu-use.conf > /dev/null
    notify-send -a "GPU Switcher" "Switched to Intel"
}

current_gpu=$(if echo $AQ_DRM_DEVICES | grep -q "nvidia-gpu"; then echo "Nvidia"; else echo "Intel"; fi)

dmenu() {
    choice=$(echo "Current gpu is $current_gpu|Nvidia|Intel" | rofi -sep '|' -dmenu -l 3 -i -window-title "Switch GPU")
    case $choice in
        Nvidia) nvidia ;;
        Intel) intel ;;
        *) exit 0 ;;
    esac
}

dmenu