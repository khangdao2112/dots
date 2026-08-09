# Commands to run in interactive sessions can go here
if status is-interactive
    # No greeting
    set fish_greeting

    # Print
    fastfetch

    # Use starship prompt
    if command -v starship &>/dev/null
        starship init fish | source
    end
    
    # Apply terminal color sequences (Material You from wallpaper)
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    alias clear "printf '\033[2J\033[3J\033[1;1H'" # fix: kitty doesn't clear scrollback properly
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    if command -v eza &>/dev/null
        alias ls 'eza --icons auto'
    end
    alias q 'inir run'
    
    # Alias
    alias i 'paru -S'
    alias u 'paru'
    alias v '$EDITOR'
    alias yz 'yazi'
    alias df 'dysk'
    alias reload 'clear && exec fish'

    # pay respects
    pay-respects fish --alias | source
end
