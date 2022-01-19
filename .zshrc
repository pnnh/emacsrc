export ZSH="/home/ubuntu/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(z zsh-interactive-cd zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='emacs'
export PS1="${ret_status}%{$fg[blue]%}%n@%m %{$fg[cyan]%}%c%{$reset_color%} "

alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
#alias emacs='emacs -nw'
alias ems='emacs -nw'
alias emc='emacsclient -nw'
