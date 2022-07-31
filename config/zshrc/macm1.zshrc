export ZSH="/home/ubuntu/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(z zsh-interactive-cd zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# 禁止AUTO_C，否则当命令和子目录重名时会自动进入子目录
unsetopt AUTO_CD
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

# node
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$HOME/.ssh/usm/:/usr/local/sbin:$PATH"

setopt nonomatch   # 解决 no matches found 问题

# java home
#export GRAALVM_HOME="/Library/Java/JavaVirtualMachines/graalvm/Contents/Home"
#export JAVA_HOME="$GRAALVM_HOME"
#export PATH="${PATH}:${JAVA_HOME}/bin"
#export PATH="${PATH}:${JAVA_HOME}/jre/bin"
export PAHT="${PATH}:$HOME/.cargo/bin"
export PATH="${PATH}:/opt/flutter/bin"

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="${GEM_HOME}/bin:${PATH}"

# wasm
#source /opt/emsdk/emsdk_env.sh >& /dev/null
export PATH="${PATH}:/opt/emsdk:/opt/emsdk/upstream/emscripten"
eval "$(rbenv init - zsh)"

# >>> xmake >>>
[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile
# <<< xmake <<<
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# 查找/opt/homebrew目录下的pkg-config配置文件，macOS M1需要配置
export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/lib/pkgconfig"

# 配置
export LDFLAGS="-L/opt/homebrew/lib"
export CFLAGS="-I/opt/homebrew/include"
export CPPFLAGS="-I/opt/homebrew/include"
export CXXFLAGS="-I/opt/homebrew/include"

# pyenv相关配置，用以管理python的多个版本
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"