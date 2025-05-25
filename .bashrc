#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.local/bin:$PATH

set -o vi

# Init ssh-agent once.
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
  ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [ ! -f "$SSH_AUTH_SOCK" ]; then
  source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# Init starship
eval "$(starship init bash)"

# Init zoxide
eval "$(zoxide init bash)"
