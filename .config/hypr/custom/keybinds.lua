-- This file will not be overwritten across dots-hyprland updates.
-- The file name is for the sake of organization and does not matter
-- See the corresponding files in ~/.config/hypr/hyprland for examples

-- ──────────────────────────────────────────────────────────────────────────────
-- Rebinds / Unbinds
-- ──────────────────────────────────────────────────────────────────────────────

-- Remap Ctrl+Super+T from original to wallpaper switcher
hl.unbind("CTRL + SUPER + T")
hl.bind("CTRL + SUPER + T",
    hl.dsp.exec_cmd("~/.config/quickshell/$qsConfig/scripts/colors/switchwall.sh")) -- [hidden]

-- Free up Super+V / Super+Period / Super+S / Super+Tab
-- (overridden below with custom actions)
hl.unbind("SUPER + V")
hl.unbind("SUPER + Period")
hl.unbind("SUPER + S")
hl.unbind("SUPER + Tab")

-- Remove upstream Super+Alt workspace number binds (replaced with Super+Shift below)
local numpadcodes = { 87, 88, 89, 83, 84, 85, 79, 80, 81, 90 }
local numrowcodes = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
for _, code in ipairs(numpadcodes) do
    hl.unbind("SUPER + ALT + code:" .. code)
end
for _, code in ipairs(numrowcodes) do
    hl.unbind("SUPER + ALT + code:" .. code)
end

-- ──────────────────────────────────────────────────────────────────────────────
-- Super+Shift + number row / numpad → move window to workspace silently
-- ──────────────────────────────────────────────────────────────────────────────

for i, code in ipairs(numrowcodes) do
    hl.bind("SUPER + SHIFT + code:" .. code,
        hl.dsp.window.move({ workspace = i, follow = false })) -- [hidden]
end
for i, code in ipairs(numpadcodes) do
    hl.bind("SUPER + SHIFT + code:" .. code,
        hl.dsp.window.move({ workspace = i, follow = false })) -- [hidden]
end

-- Special workspace via grave key
hl.bind("SUPER + SHIFT + Grave", hl.dsp.window.move({ workspace = "special", follow = false })) -- [hidden]
hl.bind("SUPER + Grave", hl.dsp.workspace.toggle_special("special"))

-- ──────────────────────────────────────────────────────────────────────────────
--##! Utilities
-- ──────────────────────────────────────────────────────────────────────────────
hl.bind("SUPER + Period",
    hl.dsp.exec_cmd("BEMOJI_PICKER_CMD='rofi -dmenu' bemoji -t -n -c"),
    { description = "Utilities: Open Emote picker" })

hl.bind("SUPER + V",
    hl.dsp.exec_cmd("copyq show"),
    { description = "Utilities: Open CopyQ clipboard" })

hl.bind("ALT + Space",
    hl.dsp.exec_cmd("fuzzel"),
    { description = "Utilities: Fuzzel launcher" })

-- ──────────────────────────────────────────────────────────────────────────────
--##! Screenshot
-- ──────────────────────────────────────────────────────────────────────────────
hl.bind("CTRL + Print",
    hl.dsp.exec_cmd("hyprshot -m region -z"),
    { description = "Screenshot: Region" })

hl.bind("CTRL + SHIFT + Print",
    hl.dsp.exec_cmd("hyprshot -m output -m active"),
    { description = "Screenshot: Active monitor" })

hl.bind("ALT + Print",
    hl.dsp.exec_cmd("hyprshot -m window -m active"),
    { description = "Screenshot: Active window" })

-- ──────────────────────────────────────────────────────────────────────────────
--##! Menus
-- ──────────────────────────────────────────────────────────────────────────────
hl.bind("SUPER + CTRL + SHIFT + Home",
    hl.dsp.exec_cmd("$HOME/dots/userscripts/legion-hybrid-switch.sh"),
    { description = "Menu: Legion hybrid mode switcher" })

hl.bind("SUPER + CTRL + SHIFT + Delete",
    hl.dsp.exec_cmd("$HOME/dots/userscripts/power.sh"),
    { description = "Menu: Power menu" })

-- ──────────────────────────────────────────────────────────────────────────────
--##! Workspace
-- ──────────────────────────────────────────────────────────────────────────────
hl.bind("SUPER + Tab",
    hl.dsp.focus({ workspace = "previous" }),
    { description = "Workspace: Switch to previous" })

-- ──────────────────────────────────────────────────────────────────────────────
-- Edit configs
-- ──────────────────────────────────────────────────────────────────────────────
hl.bind("CTRL + SUPER + Slash",
    hl.dsp.exec_cmd("xdg-open ~/.config/illogical-impulse/config.json"),
    { description = "Config: Edit shell config" })

hl.bind("CTRL + SUPER + ALT + Slash",
    hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"),
    { description = "Config: Edit extra keybinds" })
