# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

. "$HOME/.local/share/../bin/env"

export PATH="/usr/bin:$PATH"
alias vim='nvim'
alias vi='nvim'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

alias lutris='PATH=/usr/bin:$PATH lutris'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
