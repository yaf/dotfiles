if status is-interactive
  # Commands to run in interactive sessions can go here
end

set site ~/Git/lespiedsdanslecode.org

set -x PATH /snap/bin $PATH

set DPRINT_INSTALL "/home/yaf/.dprint"
set -x PATH "$DPRINT_INSTALL/bin:$PATH"


set --universal fish_user_paths $fish_user_paths
set EDITOR vi

