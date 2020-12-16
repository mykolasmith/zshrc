export PYENV_ROOT=$HOME/.pyenv
export GOPATH=~/go
export PATH=/usr/local/bin:$GOPATH/bin:$PYENV_ROOT/bin:$PATH
export PATH=$(pyenv root)/shims:$PATH
export ZSH="/Users/user/.oh-my-zsh"

ZSH_THEME="robbyrussell"
ZSH_DISABLE_COMPFIX=true
plugins=(kubectl git)
source $ZSH/oh-my-zsh.sh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias gs="git status"
alias dev="git checkout develop"
alias mas="git checkout master"

gt() {
  dir=$1
  [[ ! $dir ]] && cd ~/src && ls && return
  result=$(find ~/src/$dir* | head -1)
  [[ $result ]] && cd $result
}
