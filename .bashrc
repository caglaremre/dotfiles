# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

# environment
export GOPATH=/home/emre/.go
export FLUTTERBIN=/home/emre/data/flutter/bin/
export GOBIN=/home/emre/data/golang/go/bin/
export CMDTOOLSBIN=/home/emre/data/cmdline-tools/bin/
PATH=$PATH:$GOBIN:$FLUTTERBIN:$CMDTOOLSBIN
export PATH

# aliases
alias config='/usr/bin/git --git-dir=/home/emre/.myconf/ --work-tree=/home/emre'
alias vim=nvim
alias la='ll -a'
alias ..='cd ..'
