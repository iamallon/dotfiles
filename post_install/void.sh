#!/bin/sh

set -xe

mkdir ~/.sway

sudo xbps-install -Syu

sudo xbps-install -y sway dbus mesa-dri seatd foot wob wmenu grim

sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/seatd /var/service/

sudo usermod -a -G _seatd $USER

sudo xbps-install -y google-fonts-ttf firefox ffmpeg

sudo xbps-install -y pulse-audio alsa-plugin-pulseaudio pulseaudio-utils

sudo xbps-install -y void-repo-nonfree void-repo-multilib{,-nonfree}

sudo xbps-install -S

sudo xbps-install -y libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit libva-32bit

# AMD/ATI package specific.
# If running NVIDIA this needs to be changed.
sudo xbps-instll -y mesa-dri-32bit
sudo xbps-install -y vulkan-loader mesa-vulkan-radeon mesa-vulkan-radeon-32bit

sudo xbps-install -y steam
