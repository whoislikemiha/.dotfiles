# Dotfiles

My personal configuration files managed with a bare Git repository.

## Installation

### On a new machine
```bash
git clone --bare https://github.com/whoislikemiha/.dotfiles.git $HOME/.dotfiles

# create an alias
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> ~/.bashrc
source ~/.bashrc

config checkout

# Hide untracked files
config config --local status.showUntrackedFiles no
```

## Usage

Use the `config` command instead of `git`:
```bash
config status
# config add *pathtofile* after changes
config add ~/.bashrc
config commit -m "Update bashrc"
config push
```


## Setup dotfile versioning for yourself

If you want to replicate this setup:
```bash
# Initialize a bare git repository
git init --bare $HOME/.dotfiles

# Create alias or input this every time like a psyc.... 
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Hide untracked files
config config --local status.showUntrackedFiles no

# Add files
config add ~/.bashrc
config commit -m "commit message"
config branch main
# create your repo first
config remote add origin https://github.com/yourusername/.dotfiles.git
config push -u origin main
```


- Files stay in their original locations (no symlinks)
- Only explicitly added files are tracked
- The `.dotfiles` directory is just Git's database of where the files are at
