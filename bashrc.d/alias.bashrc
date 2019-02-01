alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 codesimple/elm:0.16'
alias exercism='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/code" -u $UID:$GID yaf/exercism:latest'
#alias heroku='docker run -v "$PWD":/tmp -w /tmp -it uochan/heroku-toolbelt /bin/bash'
alias lein='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID clojure lein'
alias jekyll='docker run -it --rm -v "$(pwd):/srv/jekyll" -w "/srv/jekyll" -u $UID:$GID jekyll/jekyll:3.8 bundle exec jekyll'
alias python='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID python:3 python'
alias please='sudo'


