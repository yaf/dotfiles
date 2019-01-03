# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi


if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

patex() { echo `date`; echo `$(pwd)`; docker run --rm -v $PWD:/workdir -w /workdir ut7fr/pdflatex $@; }
pdflatex() { echo `date`; echo `$(pwd)`; docker run --rm -v $PWD:/workdir -w /workdir ut7fr/pdflatex $@; }
todo(){ cd ~/.todo||return 1&& l=$(ls -1t|head -n1)&&t=$(date +%Y%m%d);[[ "$1" == "last" ]]&&cp $l $t; ${EDITOR:-vi} $t;cd -;}
gitodo(){ git log --grep="^TODO" | grep 'TODO' | sort --unique;}
wiki() { cd ~/.config/dotfiles || return 1 && ${EDITOR:-vi} wiki.md; }

alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 codesimple/elm:0.16'
alias exercism='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/code" -u $UID:$GID yaf/exercism:latest'
#alias heroku='docker run -v "$PWD":/tmp -w /tmp -it uochan/heroku-toolbelt /bin/bash'
alias lein='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID clojure lein'
alias python='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID python:3 python'
alias please='sudo'

for file in ~/.bashrc.d/*.bashrc;
do
  source "$file"
done

