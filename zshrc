ZSH=$HOME/.oh-my-zsh

ZSH_THEME="jreese"

alias node=nodejs
alias be=bundle exec
alias vi=vim

plugins=(git ruby rake rails bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export PATH="$HOME/.rbenv/bin:$HOME/bin:$PATH"
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Add current dir /bin to work with bundle --binstubs
export PATH="./bin:$PATH"

[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh # This loads NVM
man $(ls /usr/bin | shuf -n 1)| sed -n "/^NAME/ { n;p;q }"
export PATH="$HOME/.rbenv/bin:$PATH"

export PATH="$HOME/.cabal/bin:$PATH"

# OPAM configuration
. /home/yaf/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper_lazy.sh

hubic start

export GOPATH=$HOME/Code/go
export PATH=$PATH:/home/yaf/Code/go/bin

