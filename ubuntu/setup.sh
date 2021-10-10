#!/bin/bash

APT_PACKAGES="
  git\
  go\
  tilix\
  vim\
  zsh
"

echo Installing apt packages: ${PACKAGES}

# apts
sudo apt update -yy && sudo apt upgrade -yy
sudo apt install ${PACKAGES} -yy -q

SNAP_PACKAGES="
  curl\
  goland
"

# snaps
sudo snap install --classic ${SNAP_PACKAGES}
  
# setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

