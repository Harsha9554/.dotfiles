#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# source
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/vim"
plug "zap-zsh/atmachine-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# keybinds
bindkey '^ ' autosuggest-accept

export ZDOTDIR="$HOME/.config/zsh"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/harsha9554/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/harsha9554/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/harsha9554/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/harsha9554/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

