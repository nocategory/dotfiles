export GPG_TTY=$(tty)
# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

test -e ~/.dircolors && \
   eval `dircolors -b ~/.dircolors`

zstyle ':completion:*' special-dirs true

eval "$(starship init zsh)"
