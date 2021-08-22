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
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


cp -f .zshrc $HOME/.zshrc
cp -f .config/starship.toml $HOME/.config/starship.toml

sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes
sudo chsh -s /usr/bin/zsh $USERNAME
