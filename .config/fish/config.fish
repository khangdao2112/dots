# Commands to run in interactive sessions can go here
if status is-interactive
    # No greeting
    set fish_greeting

    # Print
    fastfetch

    # Use starship
    function starship_transient_prompt_func
        starship module character
    end
    if test "$TERM" != "linux"
        starship init fish | source
        enable_transience
    end
    
    # Colors
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    # kitty doesn't clear properly so we need to do this weird printing
    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    alias pamcan pacman
    alias q 'qs -c ii'
    
    # env
    set EDITOR '/usr/sbin/nvim'
    set HYPRPATH '~/.config/hypr'

    # Alias
    alias fishcfg '$EDITOR ~/.config/fish/config.fish'
    alias hyprcfg '$EDITOR $HYPRPATH'
    alias i 'paru -S'
    alias u 'paru'
    alias v '$EDITOR'
    alias yz 'yazi'
    alias df 'dysk'
    alias reload 'clear && exec fish'
    alias switchwall '~/.config/quickshell/ii/scripts/colors/switchwall.sh'

    if test "$TERM" != "linux"
        alias ls 'eza --icons'
    end
    if test "$TERM" = "xterm-kitty"
        alias ssh 'kitten ssh'
    end


    # pay respects
    pay-respects fish --alias | source
end
