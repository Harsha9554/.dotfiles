HISTSIZE=1000000
SAVEHIST=1000000

export EDITOR="vi"
export HISTFILE="$HOME/.dump/zsh/.zsh_history"

# User Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# System Directories
export XDG_DATA_DIRS="/usr/local/share"
export XDG_CONFIG_DIRS="/etc/xdg"

export NVIM_CONFIG_HOME="$XDG_CONFIG_HOME/nvim"
export NVIM_INIT="$NVIM_CONFIG_HOME/init.lua"

# py-virtual-envs
export PY_VENV_HOME="$HOME/code/hole-venvs"

# CUDA
export CUDA_HOME="/usr/local/cuda-11.3"
export PATH="$HOME/.local/bin":$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

eval "$(zoxide init zsh)"
