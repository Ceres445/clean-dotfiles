
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export COLORSCHEME='tokyonight'

# ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git python pip rust zsh-autosuggestions zsh-syntax-highlighting vi-mode macos tmuxinator thefuck)

export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8

source $ZSH/oh-my-zsh.sh


export EDITOR="nvim"

alias mux=tmuxinator
alias sizes="du -sh -- * .* | sort -h "
export PATH=$PATH:$HOME/.bin/scripts
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.emacs.d/bin
# fpath+=${ZDOTDIR:-~}/.zsh_functions

# node version manager


# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi
# if ! [ -e /usr/local/share/zsh/site-finctions/_tmuxinator ]
# then
#     wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator
# fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

source $HOME/.aliases.zsh


export NVM_DIR="$HOME/.nvm"
case "$DISTRO" in
    macos*)
        # autocomplete
        if type brew &>/dev/null
        then
            FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

            autoload -Uz compinit
            compinit
        fi
        [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
        [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
        export PATH="/usr/local/opt/python@3.10/bin:$PATH"
        echo
        ;;
    Ubuntu)
        export GPG_TTY=$(tty)
        ;;
    Arch)

	    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
        export GCM_CREDENTIAL_STORE=cache
        export PYENV_ROOT="$HOME/.pyenv"
        command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
        export PYENV_VIRTUALENV_DISABLE_PROMPT=1
        eval "$(pyenv init --path)"
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"
        [[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh


    esac


# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(starship init zsh)"



[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:/home/druvad/.fastn/bin"
