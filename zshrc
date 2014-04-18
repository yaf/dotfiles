ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

alias node=nodejs

plugins=(git ruby rake rails)

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
