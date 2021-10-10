#!/bin/bash

APT_PACKAGES=(
  git
  go
  golang-golang-x-tools
  tilix
  vim
  zsh
)

echo Installing apt packages: ${PACKAGES[*]}

# apts
sudo apt update -yy -qq && sudo apt upgrade -yy -qq
sudo apt install ${PACKAGES[*]} -yy -q
sudo apt autoremove -yy -qq

SNAP_PACKAGES=(
  curl
  docker
  goland
)

# snaps
for package in ${SNAP_PACKAGES[*]}; do
  echo [snap] Installing ${package}
  sudo snap install --classic ${package}
done
  
# setup oh-my-zsh
if [[ -z "${ZSH}" ]]; then 
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


