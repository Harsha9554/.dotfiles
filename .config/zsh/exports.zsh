HISTSIZE=1000000
SAVEHIST=1000000

export EDITOR="vi"
export PATH="$HOME/.local/bin":$PATH
export HISTFILE="$HOME/.dump/zsh/.zsh_history"

# User Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# System Directories
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

eval "$(zoxide init zsh)"
