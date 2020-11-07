alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 codesimple/elm:0.19'
alias exercism='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/code" -u $UID:$GID yaf/exercism:latest'
alias lein='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID clojure lein'

