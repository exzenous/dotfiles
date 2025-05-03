# For zsh subshells, add to ~/.zshrc.
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh"}}\x9c'

UNAME_OUT="$(uname -s)"
# export DEFAULT_USER="$(whoami)"

# Set Variables
export EDITOR=vim
export KUBE_EDITOR=vim

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

# Starship or ZSH/Antidote
if [[ ! -z $(which starship) ]]; then
  eval "$(starship init zsh)"
  ZSH_MANUAL_CONFIGS
else
  # Set the name of the static .zsh plugins file antidote will generate.
  if [ $UNAME_OUT = "Darwin" ]; then
    source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
    source ~/.zsh_plugins.zsh
  else
    # autoload -U +X compinit && compinit && source /home/$DEFAULT_USER/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-ohmyzsh-SLASH-ohmyzsh/lib/directories.zsh
    
    zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins.zsh

    # Ensure you have a .zsh_plugins.txt file where you can add plugins.
    [[ -f ${zsh_plugins:r}.txt ]] || touch ${zsh_plugins:r}.txt

    # Lazy-load antidote.
    fpath+=(${ZDOTDIR:-~}/.antidote)
    autoload -Uz $fpath[-1]/antidote

    # Generate static file in a subshell when .zsh_plugins.txt is updated.
    if [[ ! $zsh_plugins -nt ${zsh_plugins:r}.txt ]]; then
      (antidote bundle <${zsh_plugins:r}.txt >|$zsh_plugins)
    fi

    # Source your static plugins file.
    source $zsh_plugins
  fi
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ZSH: Blacklist for Windows Drive
ZSH_HIGHLIGHT_DIRS_BLACKLIST+=(/mnt/c)

# PATH For Ubuntu Snap
export PATH="$PATH:/snap/bin"

# PATH For Go, Pip3
# PATH=$PATH:/usr/local/go/bin:$HOME/.local/bin
# PATH=$PATH:/usr/local/go/bin

# pip zsh completion start
# function _pip_completion {
#   local words cword
#   read -Ac words
#   read -cn cword
#   reply=( $( COMP_WORDS="$words[*]" \
#              COMP_CWORD=$(( cword-1 )) \
#              PIP_AUTO_COMPLETE=1 $words[1] 2>/dev/null ))
# }
# compctl -K _pip_completion pip3

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# VirtualEnvWrapper: Tested on Ubuntu 20.04 WSL Windows 10
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
# export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
# source /usr/local/bin/virtualenvwrapper.sh

# Kuberctl Krew
export PATH="${PATH}:${HOME}/.krew/bin"

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/exzenous/google-cloud-sdk/path.zsh.inc' ]; then . '/home/exzenous/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/home/exzenous/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/exzenous/google-cloud-sdk/completion.zsh.inc'; fi

# fzf
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_OPTS='--extended --height 80% --border --reverse'

# Load pyenv automatically by appending
# the following to
# ~/.bash_profile if it exists, otherwise ~/.profile (for login shells)
# and ~/.bashrc (for interactive shells) :

# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# Restart your shell for the changes to take effect.

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:
# eval "$(pyenv virtualenv-init -)"

# Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

# NEOVIM
# export PATH="$PATH:/opt/nvim-linux64/bin"

# BREW.SH
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# . "$HOME/.local/bin/env"
