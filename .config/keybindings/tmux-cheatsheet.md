# Tmux Keybindings Cheatsheet

Configs:
- `~/.config/tmux/tmux.conf` (symlinked in this directory)
- `~/.config/tmux/tmux-bindings.conf` (symlinked in this directory)

## Prefix Key
**Prefix**: `Ctrl+a`

## Window/Pane Management

| Keybinding | Description |
|------------|-------------|
| `Prefix + \|` | Split horizontal |
| `Prefix + -` | Split vertical |
| `Alt + H` | Previous window |
| `Alt + L` | Next window |
| `Prefix + r` | Reload config |

## Copy Mode (Scrollback)

### Enter/Exit
| Keybinding | Description |
|------------|-------------|
| `Ctrl + [` | Enter copy mode |
| `PageUp` | Enter copy mode & scroll up |
| `q` or `Esc` | Exit copy mode |

### Navigation
| Keybinding | Description |
|------------|-------------|
| `j/k/h/l` | Vim-style movement |
| `Ctrl + d/u` | Half page down/up |
| `Ctrl + f/b` | Full page down/up |
| `g` | Jump to top |
| `G` | Jump to bottom |

### Visual Selection
| Keybinding | Description |
|------------|-------------|
| `v` | Begin selection |
| `V` | Select line |
| `Ctrl + v` | Rectangle selection |
| `y` | Copy & exit |

### Search
| Keybinding | Description |
|------------|-------------|
| `/` | Search forward |
| `?` | Search backward |
| `n` | Next match |
| `N` | Previous match |

---
**Add your custom keybindings below:**

