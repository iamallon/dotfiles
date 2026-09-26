#!/bin/sh

set -xe

mkdir ~/.sway

sudo xbps-install -Syu

sudo xbps-install -y sway dbus mesa-dri seatd foot wob wmenu grim xdg-utils

sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/seatd /var/service/
sudo usermod -a -G _seatd $USER

sudo xbps-install -y dejavu-fonts-ttf google-fonts-ttf firefox ffmpeg

# Development tools.
sudo xbps-install -y git starship zoxide eza nano btop emacs-pgtk ripgrep

# Compilers & misc.
sudo xbps-install -y go clang make ruby ruby-devel

# Audio & misc.
sudo xbps-install -y pulse-audio alsa-plugin-pulseaudio pulseaudio-utils

# Security tools & daemons.
subo xbps-install -y gnupg gnupg2-scdaemon yubikey-manager pcsc-ccid pcsclite
sudo ln -s /etc/sv/pcscd /var/service/

echo disable-ccid >> ~/.gnupg/scdaemon.conf
echo enable-ssh-support >> ~/.gnupg/gpg-agent.conf

# Optional.
if [ -n "${STEAM_PKG}" ]; then
    sudo xbps-install -y void-repo-nonfree void-repo-multilib{,-nonfree}
    sudo xbps-install -S
    sudo xbps-install -y libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit libva-32bit

    # AMD/ATI package specific.
    # If running NVIDIA this needs to be changed.
    sudo xbps-install -y mesa-dri-32bit
    sudo xbps-install -y vulkan-loader mesa-vulkan-radeon mesa-vulkan-radeon-32bit

    sudo xbps-install -y steam
fi

if [ -n "${DISCORD_PKG}" ]; then
    cd $HOME
    git clone https://github.com/void-linux/void-packages.git
    cd void-packages
    echo XBPS_ALLOW_RESTRICTED=yes >> etc/conf
    sudo ./xbps-src pkg discord
    sudo xbps-install -Ry "$HOME/void-packages/hostdir/binpkgs/nonfree" discord
fi
