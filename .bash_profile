# .bash_profile
export XDG_RUNTIME_DIR=$HOME/.sway
export GEM_HOME=$HOME/gems
export DOTNET_ROOT=$HOME/.dotnet

PATH=$PATH:$HOME/go/bin:$HOME/gems/bin:$HOME/.dotnet:$HOME/.dotnet/tools

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
