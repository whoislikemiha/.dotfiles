# Vim Basic Keybindings Cheatsheet

These are built-in Vim keybindings that work in Neovim. You can override any of these in your `neovim-keymaps.lua` file.

---

## Modes

| Key | Description |
|-----|-------------|
| `i` | Enter Insert mode |
| `I` | Insert at beginning of line |
| `a` | Append after cursor |
| `A` | Append at end of line |
| `o` | Open new line below |
| `O` | Open new line above |
| `v` | Enter Visual mode |
| `V` | Enter Visual Line mode |
| `Ctrl+v` | Enter Visual Block mode |
| `Esc` | Return to Normal mode |
| `:` | Enter Command mode |

---

## Motion (Navigation)

### Basic Movement
| Key | Description |
|-----|-------------|
| `h` | Left |
| `j` | Down |
| `k` | Up |
| `l` | Right |
| `w` | Next word start |
| `W` | Next WORD start (space-separated) |
| `e` | Next word end |
| `E` | Next WORD end |
| `b` | Previous word start |
| `B` | Previous WORD start |
| `0` | Start of line |
| `^` | First non-blank character |
| `$` | End of line |
| `gg` | First line of file |
| `G` | Last line of file |
| `{number}G` | Go to line number |
| `%` | Jump to matching bracket |

### Screen Movement
| Key | Description |
|-----|-------------|
| `Ctrl+d` | Half page down |
| `Ctrl+u` | Half page up |
| `Ctrl+f` | Full page down |
| `Ctrl+b` | Full page up |
| `H` | Top of screen |
| `M` | Middle of screen |
| `L` | Bottom of screen |
| `zt` | Scroll cursor to top |
| `zz` | Scroll cursor to center |
| `zb` | Scroll cursor to bottom |

### Search & Jump
| Key | Description |
|-----|-------------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` | Next search result |
| `N` | Previous search result |
| `*` | Search word under cursor (forward) |
| `#` | Search word under cursor (backward) |
| `f{char}` | Jump to next char in line |
| `F{char}` | Jump to previous char in line |
| `t{char}` | Jump before next char |
| `T{char}` | Jump before previous char |
| `;` | Repeat last f/F/t/T |
| `,` | Repeat last f/F/t/T backwards |

---

## Editing

### Basic Editing
| Key | Description |
|-----|-------------|
| `x` | Delete character |
| `X` | Delete character before cursor |
| `dd` | Delete line |
| `D` | Delete to end of line |
| `dw` | Delete word |
| `d$` | Delete to end of line |
| `d0` | Delete to start of line |
| `cc` | Change line |
| `C` | Change to end of line |
| `cw` | Change word |
| `r` | Replace character |
| `R` | Enter Replace mode |
| `s` | Substitute character |
| `S` | Substitute line |
| `yy` | Yank (copy) line |
| `yw` | Yank word |
| `y$` | Yank to end of line |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `u` | Undo |
| `Ctrl+r` | Redo |
| `.` | Repeat last command |

### Text Objects (combine with d, c, y, v)
| Key | Description |
|-----|-------------|
| `iw` | Inner word |
| `aw` | A word (with space) |
| `is` | Inner sentence |
| `as` | A sentence |
| `ip` | Inner paragraph |
| `ap` | A paragraph |
| `i(` or `i)` or `ib` | Inner parentheses |
| `a(` or `a)` or `ab` | A parentheses (with parens) |
| `i{` or `i}` or `iB` | Inner braces |
| `a{` or `a}` or `aB` | A braces (with braces) |
| `i[` or `i]` | Inner brackets |
| `a[` or `a]` | A brackets (with brackets) |
| `i"` | Inner double quotes |
| `a"` | A double quotes (with quotes) |
| `i'` | Inner single quotes |
| `a'` | A single quotes (with quotes) |
| `it` | Inner tag (HTML/XML) |
| `at` | A tag (HTML/XML) |

**Examples:**
- `diw` - Delete inner word
- `ci"` - Change inside quotes
- `va{` - Visually select braces and content
- `yap` - Yank a paragraph

---

## Visual Mode

| Key | Description |
|-----|-------------|
| `v` | Character-wise visual |
| `V` | Line-wise visual |
| `Ctrl+v` | Block-wise visual |
| `o` | Move to other end of selection |
| `>` | Indent selection |
| `<` | Unindent selection |
| `d` | Delete selection |
| `c` | Change selection |
| `y` | Yank selection |
| `~` | Toggle case |
| `u` | Lowercase |
| `U` | Uppercase |

---

## Marks & Jumps

| Key | Description |
|-----|-------------|
| `m{a-z}` | Set mark (local to file) |
| `m{A-Z}` | Set mark (global) |
| `'{mark}` | Jump to mark line |
| `` `{mark} `` | Jump to mark exact position |
| `''` | Jump to previous position |
| ``` `` ``` | Jump to exact previous position |
| `Ctrl+o` | Jump to older position |
| `Ctrl+i` | Jump to newer position |

---

## Registers

| Key | Description |
|-----|-------------|
| `"{register}` | Use register (a-z, 0-9) |
| `""` | Default register |
| `"0` | Last yank |
| `"1-9` | Delete history |
| `"+` | System clipboard |
| `"*` | Selection clipboard |
| `"_` | Black hole register (delete without saving) |
| `:reg` | Show all registers |

**Examples:**
- `"ayy` - Yank line to register 'a'
- `"ap` - Paste from register 'a'
- `"+y` - Yank to system clipboard
- `"+p` - Paste from system clipboard

---

## Macros

| Key | Description |
|-----|-------------|
| `q{register}` | Start recording macro |
| `q` | Stop recording |
| `@{register}` | Play macro |
| `@@` | Replay last macro |
| `{number}@{register}` | Play macro N times |

---

## Window Commands

| Key | Description |
|-----|-------------|
| `:sp` or `Ctrl+w s` | Split horizontal |
| `:vsp` or `Ctrl+w v` | Split vertical |
| `Ctrl+w w` | Switch window |
| `Ctrl+w h/j/k/l` | Navigate windows |
| `Ctrl+w q` | Close window |
| `Ctrl+w o` | Close other windows |
| `Ctrl+w =` | Equalize window sizes |
| `Ctrl+w +/-` | Resize height |
| `Ctrl+w >/<` | Resize width |

---

## File Commands

| Key | Description |
|-----|-------------|
| `:w` | Write (save) |
| `:w {file}` | Save as |
| `:q` | Quit |
| `:q!` | Quit without saving |
| `:wq` or `:x` or `ZZ` | Write and quit |
| `:qa` | Quit all |
| `:e {file}` | Edit file |
| `:e!` | Reload file (discard changes) |
| `:bn` | Next buffer |
| `:bp` | Previous buffer |
| `:bd` | Delete buffer |

---

## Search & Replace

| Command | Description |
|---------|-------------|
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace all (with confirmation) |
| `:s/old/new/g` | Replace in current line |
| `:'<,'>s/old/new/g` | Replace in visual selection |
| `:g/pattern/d` | Delete lines matching pattern |
| `:v/pattern/d` | Delete lines NOT matching pattern |

---

## Miscellaneous

| Key | Description |
|-----|-------------|
| `Ctrl+a` | Increment number |
| `Ctrl+x` | Decrement number |
| `>>` | Indent line |
| `<<` | Unindent line |
| `==` | Auto-indent line |
| `J` | Join lines |
| `gJ` | Join lines without space |
| `~` | Toggle case |
| `gu{motion}` | Lowercase |
| `gU{motion}` | Uppercase |
| `.` | Repeat last command |
| `Ctrl+g` | Show file info |
| `ga` | Show ASCII value of character |

---

## Overriding Vim Keybindings

To override any of these in Neovim, add to `~/.config/nvim/lua/config/keymaps.lua`:

```lua
-- Example: Make 'j' and 'k' work with wrapped lines (already done in LazyVim)
vim.keymap.set("n", "j", "gj", { desc = "Down" })
vim.keymap.set("n", "k", "gk", { desc = "Up" })

-- Example: Remap 'Y' to yank to end of line (like D and C)
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- Example: Disable arrow keys (force hjkl usage)
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")
```

---

## Resources
- `:help` - Vim help system
- `:help {topic}` - Help for specific topic
- `vimtutor` - Interactive Vim tutorial (run in terminal)

