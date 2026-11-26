#!/bin/bash
# MustafaOS Build Script
sudo apt update && sudo apt install -y live-build
mkdir -p mustafa-os/config
cd mustafa-os
lb config --distribution trixie --architectures amd64 --binary-images iso
echo 'xfce4 xfce4-goodies picom zram-tools firefox-esr' > config/package-lists/mustafa.list.chroot
sudo lb build