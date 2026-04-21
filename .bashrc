# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Disable automatic completion popups
bind 'set show-all-if-ambiguous off'
bind 'set show-all-if-unmodified off'

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


export PATH="/home/miha/.lmstudio/bin:$PATH"

# opencode
export PATH=/home/miha/.opencode/bin:$PATH
export PATH="$HOME/.npm-global/bin:$PATH"

# Added by LM Studio CLI tool (lms)
export PATH="$PATH:/home/miha/.lmstudio/bin"

# peon-ping quick controls
alias peon="bash ~/.claude/hooks/peon-ping/peon.sh"
[ -f ~/.claude/hooks/peon-ping/completions.bash ] && source ~/.claude/hooks/peon-ping/completions.bash
export PATH="$HOME/.cargo/bin:$PATH"
