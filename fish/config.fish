if status is-interactive
    # Commands to run in interactive sessions can go here
end

function ll
    ls -lh $argv
end

set site ~/Git/lespiedsdanslecode.org

set -x PATH $HOME/.rbenv/bin /snap/bin $PATH
set --universal fish_user_paths $fish_user_paths ~/.rbenv/shims
set EDITOR vi

