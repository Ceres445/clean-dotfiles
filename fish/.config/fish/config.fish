if status is-interactive
    # Commands to run in interactive sessions can go here
end
if status --is-login
  if test (tty) = /dev/tty1
    Hyprland
  end
end


alias rm="rm -I"
alias pi='sudo pacman -S'
alias pip="python3 -m pip"
alias ls='exa'
alias l='exa -l'
alias cat='bat'
alias s="kitty +kitten ssh"
export XDG_CONFIG_HOME="$HOME/.config"

export DISTRO='Arch'
starship init fish | source

#thefuck --alias | source

pyenv init - | source

status --is-interactive; and source (pyenv virtualenv-init -|psub)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/miniconda3/bin/conda
    eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
        . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

set -gx LC_ALL en_US.UTF-8




