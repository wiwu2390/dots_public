# export TERM=xterm    # For colors in ssh??
export PATH="$HOME/.local/bin:$PATH"

export LS_COLORS="ow=1;34"

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=** l:|=*'
zstyle :compinstall filename '/home/wilson/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt extendedglob
# End of lines configured by zsh-newuser-install

export MOZ_ENABLE_WAYLAND=1
export EDITOR=vim
export VISUAL=vim

ZSH_THEME="moonrise"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

export XDG_CONFIG_HOME=$HOME/.config

alias lt="ls -rt"
alias ltt="ls -rt | tail"
alias cp="cp -i"
alias mv="mv -i"
alias pdf="zathura"
alias off="sudo systemctl poweroff"
alias reboot="sudo systemctl reboot"
# Screenshot -> clipboard
alias gr="grim - | wl-copy -t image/png"
alias odd="onedrive --synchronize --sync-shared-folders --download-only"
alias ods="onedrive --synchronize --sync-shared-folders"
alias lab="jupyter lab --ip=$(ip route get 1.2.3.4 | awk '{print $7}')"

# Screenshot a region -> clipboard
grr() {
	grim -g "$(slurp)" - | wl-copy -t image/png
}
cdd() {
	cd $(dirname $1)
}

old() {
	cp $1 $1.$(date +%Y%m%d)
}

pls() {
	echo $(pwd)/$1
}

bindkey -v
bindkey -M viins 'jt' vi-cmd-mode
bindkey -M viins '\e.' insert-last-word
bindkey "^[[A" history-beginning-search-backward 
bindkey "^[[B" history-beginning-search-forward

# system update every week:
# python is a little slow to run in .zshrc...
# /home/wilson/scripts/pacman.py
