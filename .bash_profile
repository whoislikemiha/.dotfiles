#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

. "$HOME/.local/share/../bin/env"


# Added by Toolbox App
export PATH="$PATH:/home/miha/.local/share/JetBrains/Toolbox/scripts"


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by LM Studio CLI tool (lms)
export PATH="$PATH:/home/miha/.lmstudio/bin"
