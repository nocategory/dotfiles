#!/bin/sh

chmod +x ./install.sh
apt-get update
apt-get install -y \
  curl \
  gh \
  git \
  gnupg2 \
  jq \
  sudo \
  zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

