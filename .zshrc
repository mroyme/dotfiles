# Load Antigen
source ${HOME}/.antigen/antigen.zsh

# Source aliases
source ${HOME}/.aliasesrc.zsh

# Enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable fuck alias
eval $(thefuck --alias)

# Initialize Antigen
antigen init ${HOME}/.antigenrc

# This speeds up pasting with zsh-autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic
}
pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# Path variables
# LLVM
export PATH="/usr/local/opt/llvm/bin:$PATH"
# Add EIG Scripts
export PATH="$PATH:${HOME}/.eig"
# RabbitMQ
export PATH="$PATH:/opt/rabbitmq_server-3.5.7/sbin"
# Flutter
export PATH="$PATH:${HOME}/development/flutter/bin"

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/madhurjya.r/.sdkman"
[[ -s "/Users/madhurjya.r/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/madhurjya.r/.sdkman/bin/sdkman-init.sh"

