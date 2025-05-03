# Set Variables
export EDITOR=vim
export KUBE_EDITOR=vim
export DEFAULT_USER=$(whoami)
export UNAME_KERNEL_NAME="$(uname -s)"

# Warp Terminal: For zsh subshells, add to ~/.zshrc.
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh"}}\x9c'

# Aliases
alias cls='clear'
alias gvg='grep -v grep'

alias tf='terraform'
alias trg='terragrunt'

alias azi='az interactive'

alias k="kubectl"
alias kget='kubectl get'
alias mnk='minikube'

alias dk="docker"
alias dkb="docker build ."

ZSH_MANUAL_CONFIGS() {
  bindkey "^[[3~" delete-char
}

# ZSH: Blacklist for Windows Drive
ZSH_HIGHLIGHT_DIRS_BLACKLIST+=(/mnt/c)

# Hybrid Setup: Starship or ZSH/Antidote
if [[ ! -z $(which starship) ]]; then
  eval "$(starship init zsh)"
  ZSH_MANUAL_CONFIGS
else
  # Antidote: Ultra high performance install
  # Set the root name of the plugins files (.txt and .zsh) antidote will use.
  zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins

  # Ensure the .zsh_plugins.txt file exists so you can add plugins.
  [[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt

  # Lazy-load antidote from its functions directory.
  fpath=(/path/to/antidote/functions $fpath)
  autoload -Uz antidote

  # Generate a new static file whenever .zsh_plugins.txt is updated.
  if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
    antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
  fi

  # Source your static plugins file.
  source ${zsh_plugins}.zsh
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Python/UV
export PATH=$PATH:$HOME/.local/bin/env

# Ubuntu Snap: Add to PATH
export PATH="$PATH:/snap/bin"

# kubectl krew
export PATH="${PATH}:${HOME}/.krew/bin"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--extended --height 80% --border --reverse'

# Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin
