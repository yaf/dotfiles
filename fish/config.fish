if status is-interactive
    # Commands to run in interactive sessions can go here
end

function ll
    ls -lh $argv
end

set site ~/Git/lespiedsdanslecode.org

function journal
  set destinationDirectory $site/content/(date +%G)/(date +%m)
  if not test -d $destinationDirectory
    mkdir -p $destinationDirectory
  end
  if test -f /var/lock/journal.lock
    echo "journal déjà ouvert"
  else
    flock -n /var/lock/journal.lock vim $destinationDirectory/index.md
    rm -f /var/lock/journal.lock
  end
end

function httpserver
  python3 -m http.server 8000 --bind 127.0.0.1
end

set -x PATH $HOME/.rbenv/bin /snap/bin $PATH
set --universal fish_user_paths $fish_user_paths ~/.rbenv/shims
set EDITOR vi

load_nvm > /dev/stderr
