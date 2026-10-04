# Neovim Keybindings Cheatsheet

Config: `~/.config/nvim/lua/config/keymaps.lua` (symlinked in this directory)

## Leader Key
**Leader**: `Space` (or `Caps Lock` remapped via keyd)

---

## Custom Keybindings

| Keybinding | Description |
|------------|-------------|
| `<leader>w` | Save file |
| `<leader>q` | Close buffer |
| `<leader>Q` | Quit all window |

---

## LazyVim Default Keybindings

### Basic Navigation & Editing

| Keybinding | Mode | Description |
|------------|------|-------------|
| `j` / `k` | Normal, Visual | Better up/down (respects wrapped lines) |
| `<C-h/j/k/l>` | Normal | Navigate between windows |
| `<C-Up/Down/Left/Right>` | Normal | Resize windows |
| `<A-j>` / `<A-k>` | Normal, Insert, Visual | Move lines up/down |
| `<C-s>` | All modes | Save file |

### Buffer Management

| Keybinding | Description |
|------------|-------------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `[b` / `]b` | Previous/Next buffer |
| `<leader>bb` | Switch to other buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bo` | Delete other buffers |
| `<leader>bD` | Delete buffer and window |

### Files & Search

| Keybinding | Description |
|------------|-------------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fn` | New file |
| `n` / `N` | Next/Previous search result |
| `<esc>` | Clear search highlight |

### Code & Formatting

| Keybinding | Description |
|------------|-------------|
| `<leader>cf` | Format code |
| `<leader>cd` | Line diagnostics |
| `]d` / `[d` | Next/Previous diagnostic |
| `]e` / `[e` | Next/Previous error |
| `]w` / `[w` | Next/Previous warning |
| `K` | Hover documentation |
| `gd` | Go to definition |
| `gr` | Go to references |

### Commenting

| Keybinding | Description |
|------------|-------------|
| `gcc` | Comment line |
| `gc` | Comment selection |
| `gco` | Add comment below |
| `gcO` | Add comment above |

### Git

| Keybinding | Description |
|------------|-------------|
| `<leader>gg` | LazyGit (root dir) |
| `<leader>gG` | LazyGit (cwd) |
| `<leader>gl` | Git log |
| `<leader>gL` | Git log (cwd) |
| `<leader>gf` | Git file history |
| `<leader>gb` | Git blame line |
| `<leader>gB` | Git browse (open) |
| `<leader>gY` | Git browse (copy URL) |

### Windows & Splits

| Keybinding | Description |
|------------|-------------|
| `<leader>-` | Split window below |
| `<leader>\|` | Split window right |
| `<leader>wd` | Delete window |
| `<leader>wm` | Maximize/zoom window |

### Tabs

| Keybinding | Description |
|------------|-------------|
| `<leader><tab><tab>` | New tab |
| `<leader><tab>d` | Close tab |
| `<leader><tab>]` | Next tab |
| `<leader><tab>[` | Previous tab |
| `<leader><tab>f` | First tab |
| `<leader><tab>l` | Last tab |
| `<leader><tab>o` | Close other tabs |

### Terminal

| Keybinding | Description |
|------------|-------------|
| `<leader>ft` | Terminal (root dir) |
| `<leader>fT` | Terminal (cwd) |
| `<C-/>` | Toggle terminal |

### Indenting & Editing

| Keybinding | Mode | Description |
|------------|------|-------------|
| `<` / `>` | Visual | Indent/outdent (keeps selection) |
| `,` `.` `;` | Insert | Undo break-points |

### Quickfix & Location List

| Keybinding | Description |
|------------|-------------|
| `<leader>xq` | Toggle quickfix list |
| `<leader>xl` | Toggle location list |
| `]q` / `[q` | Next/Previous quickfix |

### Toggle Options

| Keybinding | Description |
|------------|-------------|
| `<leader>uf` | Toggle auto-format |
| `<leader>uF` | Toggle auto-format (global) |
| `<leader>us` | Toggle spelling |
| `<leader>uw` | Toggle wrap |
| `<leader>uL` | Toggle relative number |
| `<leader>ul` | Toggle line numbers |
| `<leader>ud` | Toggle diagnostics |
| `<leader>uc` | Toggle conceal level |
| `<leader>uh` | Toggle inlay hints |
| `<leader>uT` | Toggle treesitter |
| `<leader>ub` | Toggle dark/light background |
| `<leader>uz` | Toggle zen mode |
| `<leader>uZ` | Toggle zoom |

### Utility

| Keybinding | Description |
|------------|-------------|
| `<leader>l` | Open Lazy (plugin manager) |
| `<leader>L` | LazyVim changelog |
| `<leader>qq` | Quit all |
| `<leader>ur` | Redraw/clear/diff update |
| `<leader>K` | Keywordprg |
| `<leader>ui` | Inspect position |
| `<leader>uI` | Inspect treesitter tree |

### Lua Debugging (in .lua files)

| Keybinding | Description |
|------------|-------------|
| `<localleader>r` | Run Lua |

---

## Tips
- Use `:Telescope keymaps` to search all keybindings interactively
- Full LazyVim defaults: https://www.lazyvim.org/keymaps
- Press `<leader>` and wait to see available keybindings (which-key)

---

**Add your custom keybindings below:**

