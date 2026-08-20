if test (tty) = "/dev/tty1"
    startx
end

fish_vi_key_bindings

set -u fish_greeting

alias mv "mv -v"
alias cp "cp -rv"
alias rm "rm -rv"

alias poweroff "loginctl poweroff"
alias reboot "loginctl reboot"

if type -q eza
    alias ls "eza -bh -F --group-directories-first"
    alias ll "eza -bhl -F --group-directories-first"
    alias la "eza -abhl -F --group-directories-first"
end

if type -q zoxide
    zoxide init fish | source
    alias cd "z"
end

function fish_mode_prompt
end

function fish_right_prompt
    if test $CMD_DURATION -gt 5000
        set_color yellow
        printf '%.1fs ' (math $CMD_DURATION / 1000)
        set_color normal
    end
end
