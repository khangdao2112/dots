-- This file will not be overwritten across dots-hyprland updates.
-- The file name is for the sake of organization and does not matter
-- See the corresponding files in ~/.config/hypr/hyprland for examples

-- ──────────────────────────────────────────────────────────────────────────────
-- Window rules
-- ──────────────────────────────────────────────────────────────────────────────

-- Re-enable blur for all windows (overrides upstream's global no_blur)
hl.window_rule({ match = { class = ".*" }, no_blur = false })

-- Desktop Gremlins
hl.window_rule({ match = { title = "ilgwg_desktop_gremlins.py" }, no_blur = true })
hl.window_rule({ match = { title = "ilgwg_desktop_gremlins.py" }, no_shadow = true })
hl.window_rule({ match = { title = "ilgwg_desktop_gremlins.py" }, border_size = 0 })

-- VSCode
hl.window_rule({ match = { class = "code" },    opacity = "0.9 0.95" })

-- Kitty
hl.window_rule({ match = { class = "^kitty$" }, opacity = "0.9 0.95" })

-- YouTube Music (Pear)
hl.window_rule({ match = { class = "com.github.th_ch.youtube_music" }, opacity = "0.85 0.95" })

-- Vesktop — open silently on workspace 2
hl.window_rule({ match = { class = "vesktop" }, workspace = "2 silent" })

-- Steam — force float
hl.window_rule({ match = { class = "steam" }, float = true })

-- CopyQ — float, center, opacity
hl.window_rule({ match = { class = "com.github.hluk.copyq" }, float = true })
hl.window_rule({ match = { class = "com.github.hluk.copyq" }, center = true })
hl.window_rule({ match = { class = "com.github.hluk.copyq" }, opacity = "0.85 0.95" })

-- eDEX-UI
hl.window_rule({ match = { class = "eDEX-UI" }, opacity = "0.85 0.95" })

-- Spotify
hl.window_rule({ match = { class = "spotify" }, opacity = "0.85 0.95" })

-- Hyprland share picker — force float
hl.window_rule({ match = { class = "^(hyprland-share-picker)(.*)$" }, float = true })

-- ──────────────────────────────────────────────────────────────────────────────
-- Workspace rules
-- ──────────────────────────────────────────────────────────────────────────────

-- Special scratchpad workspace padding
hl.workspace_rule({ workspace = "special:special", gaps_out = 50 })
