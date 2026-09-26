# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
eval "$(zoxide init bash)"

if [ "$(tty)" = "/dev/tty1" ]; then
  dbus-run-session sway
fi

# Fix wrong tty for gpg pinentry
gpg-connect-agent updatestartuptty /bye >/dev/null 2>&1
