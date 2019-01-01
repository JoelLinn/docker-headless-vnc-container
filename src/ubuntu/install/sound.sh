#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install sound system"
apt-get update
apt-get install -y pulseaudio pavucontrol # for sound
apt-get clean -y
