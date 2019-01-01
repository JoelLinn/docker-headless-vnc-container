#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Firefox Browser"
apt-get update
apt-get install -y firefox
apt-get clean -y
