# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Init ssh-agent once.
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
  ssh-agent -t 1h > "$HOME/.ssh/ssh-agent.env"
fi
if [ ! -f "$SSH_AUTH_SOCK" ]; then
  source "$HOME/.ssh/ssh-agent.env" >/dev/null
fi

alias ls='ls --color=auto'
alias emacs='emacsclient -nw'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
eval "$(zoxide init bash)"

export XDG_RUNTIME_DIR=~/.sway
if [ "$(tty)" = "/dev/tty1" ]; then
  dbus-run-session sway
fi
