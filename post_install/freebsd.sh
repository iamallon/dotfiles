#!/bin/sh

set -xe

TARGET="${1:?target user not set}"

pkg update && pkg upgrade

# DRI drivers

pkg install -y drm-kmod
sysrc kld_list="i915kms"

# Sway and deps.

su "$TARGET" -c "mkdir -p ~/.sway"

pkg install -y sway dbus seatd foot wob wmenu grim xdg-utils

pw groupmod video -m "$TARGET"
sysrc seatd_enable="YES"
sysrc dbus_enable="YES"

pkg install -y dejavu google-fonts firefox ffmpeg

# Development tools.
pkg install -y stow git starship zoxide eza nano btop emacs-wayland ripgrep

# Compilers & misc.
pkg install -y bash go ruby
chsh -s "$(whereis -bq bash)" "$TARGET"

# Security tools & daemons.
pkg install -y gnupg pcsc-lite libccid
pkg install -y -g py*-yubikey-manager
sysrc pcscd_enable="YES"

su "$TARGET" -c "mkdir -m 700 -p ~/.gnupg"
su "$TARGET" -c "echo disable-ccid > ~/.gnupg/scdaemon.conf"
su "$TARGET" -c "echo keyserver hkps://keys.openpgp.org > ~/.gnupg/gpg.conf"
su "$TARGET" -c "echo enable-ssh-support > ~/.gnupg/gpg-agent.conf"
