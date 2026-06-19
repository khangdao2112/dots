-- This file will not be overwritten across dots-hyprland updates.
-- Hyprscrolling plugin config + keybind overrides

-- Set scrolling layout
hl.config({
    general = {
        layout = "scrolling"
    },
})

-- ──────────────────────────────────────────────────────────────────────────────
-- Unbind upstream BracketLeft / BracketRight window-focus binds
-- so scrolling layout can repurpose them for column navigation
-- ──────────────────────────────────────────────────────────────────────────────
hl.unbind("SUPER + BracketRight")
hl.unbind("SUPER + BracketLeft")

-- Focus columns
hl.bind("SUPER + BracketRight", hl.dsp.layout("focus r"), { repeating = true })
hl.bind("SUPER + BracketLeft",  hl.dsp.layout("focus l"), { repeating = true })

-- Swap columns
hl.bind("SUPER + SHIFT + BracketRight", hl.dsp.layout("swapcol r"), { repeating = true })
hl.bind("SUPER + SHIFT + BracketLeft",  hl.dsp.layout("swapcol l"), { repeating = true })

-- Promote new column
hl.bind("SUPER + P", hl.dsp.layout("promote"), { description = "Scrolling: Promote column" })

-- Resize columns (Apostrophe = wider, Semicolon = narrower)
hl.bind("SUPER + Apostrophe", hl.dsp.layout("colresize +conf"), { repeating = true })
hl.bind("SUPER + Semicolon",  hl.dsp.layout("colresize -conf"), { repeating = true })
