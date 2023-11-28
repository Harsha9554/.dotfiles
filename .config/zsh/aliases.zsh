alias lz="lazygit"
alias py="python3"
alias tx="tmux"

# alias ls="ls --color=auto"
alias ll="ls -la --color=auto"
alias ls="ls -la --color=auto"

alias ..="cd .."

alias h="history"

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias x-phase="tmuxp load $HOME/.config/tmuxp/x-phase.yaml"
alias x-eleet="tmuxp load $HOME/.config/tmuxp/x-eleet.yaml"
alias x-idea="tmuxp load $HOME/.config/tmuxp/x-idealab.yaml"
alias ec2="ssh -i "CML_Key.pem" ec2-user@ec2-44-208-184-61.compute-1.amazonaws.com"

alias c="clear"
alias notion="zsh $HOME/scripts/notion-add-script.sh"
