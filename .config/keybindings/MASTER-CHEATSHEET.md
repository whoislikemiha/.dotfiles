# Master Keybindings Cheatsheet

Quick reference for all keybindings across your system.

## System-Wide

### Caps Lock Remap
- **Caps Lock** → **Space** (via keyd at `/etc/keyd/default.conf`)

---

## Hyprland (Window Manager)

### Applications
- `SUPER + Return` - Terminal
- `SUPER + E` - File manager
- `SUPER + B` - Browser
- `SUPER + N` - Editor
- `SUPER + A` - Claude AI
- `SUPER + C` - VSCode
- `SUPER + O` - Obsidian
- `SUPER + Y` - YouTube
- `SUPER + G` - WhatsApp

### Window Management
- `SUPER + Q` - Close window
- `SUPER + F` - Fullscreen

[Full list: hyprland-cheatsheet.md]

---

## Tmux (Terminal Multiplexer)

**Prefix**: `Ctrl+a`

### Window/Pane
- `Prefix + |` - Split horizontal
- `Prefix + -` - Split vertical
- `Alt + H/L` - Switch windows

### Copy Mode
- `Ctrl + [` - Enter copy mode
- `j/k/h/l` - Navigate
- `v` - Visual select
- `y` - Copy
- `/` - Search

[Full list: tmux-cheatsheet.md]

---

## Neovim (Editor)

**Leader**: `Space` (or Caps Lock)

### Custom
- `<leader>w` - Save
- `<leader>q` - Close buffer
- `<leader>Q` - Quit window

### Common
- `<leader>ff` - Find files
- `<leader>fg` - Grep
- `<leader>e` - File explorer
- `<leader>gg` - Git
- `K` - Hover docs
- `gd` - Go to definition

[Full list: neovim-cheatsheet.md]

---

## Config File Locations

All keybinding configs are symlinked in `~/.config/keybindings/`:
- `neovim-keymaps.lua` → `~/.config/nvim/lua/config/keymaps.lua`
- `hyprland-bindings.conf` → `~/.config/hypr/bindings.conf`
- `tmux.conf` → `~/.config/tmux/tmux.conf`
- `tmux-bindings.conf` → `~/.config/tmux/tmux-bindings.conf`

---

## Adding New Keybindings

1. Edit the actual config file in its application directory
2. Update the corresponding cheatsheet in `~/.config/keybindings/`
3. Update this master cheatsheet if needed

---

**Custom additions below:**

