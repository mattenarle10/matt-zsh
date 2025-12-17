# Nvim Keybinding Test

Try these keybindings:

## File Navigation
- Space + e     → Toggle file explorer (Neo-tree)
- Space + ff    → Find files (Telescope)
- Space + fg    → Search text in files
- Space + fb    → Find buffers

## Tab Management
- Space + tn    → New tab
- Space + ]     → Next tab
- Space + [     → Previous tab
- gt / gT       → Next/Previous tab (vim default)

## Splits
- Space + sv    → Vertical split
- Space + sh    → Horizontal split
- Ctrl + h/j/k/l → Navigate splits

## Git
- Space + gg    → LazyGit TUI

## Save/Quit
- Space + w     → Save
- Space + q     → Quit
- jk (in insert mode) → Exit to normal mode

## Other
- K (on a word)  → Hover docs (if LSP active)
- gd             → Go to definition
- Space + ?      → Which-key help (shows all shortcuts!)

---

**Now try opening nvim:**
```bash
nvim ~/.dotfiles/test.md
```

Then press `Space` and wait - Which-key will show you all available shortcuts!
