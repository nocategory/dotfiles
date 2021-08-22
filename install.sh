#!/bin/sh

sudo apt-get update
sudo apt-get install -y \
  curl \
  gh \
  git \
  gnupg2 \
  jq \
  sudo \
  zsh

sudo rm -rf $HOME/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sh -c "$(curl -fsSL https://starship.rs/install.sh)" --yes

