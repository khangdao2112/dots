-- This file will not be overwritten across dots-hyprland updates.
-- The file name is for the sake of organization and does not matter
-- See the corresponding files in ~/.config/hypr/hyprland for examples

hl.on("hyprland.start", function()

    -- Apps
    hl.exec_cmd("fcitx5 -d")
    hl.exec_cmd("steam -silent")
    hl.exec_cmd("hyprshell run")

    -- Bluetooth
    hl.exec_cmd("bluetooth-autoconnect")

    -- CopyQ
    hl.exec_cmd("copyq")

    -- Set cursor theme and size
    hl.exec_cmd("hyprctl setcursor $HYPRCURSOR_THEME $HYPRCURSOR_SIZE")

    -- Vesktop
    hl.exec_cmd("sleep 2 && vesktop --enable-blink-features=MiddleClickAutoscroll")

    -- Legion GUI
    hl.exec_cmd("legion_gui --use_legion_cli_to_write")

    -- OTD
    hl.exec_cmd("systemctl --user start opentabletdriver.service --now")

end)
