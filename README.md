# Matt's Dotfiles

Personal configuration files for zsh, nvim, and other tools.

## What's Included

- **zsh**: Shell configuration with Oh My Zsh, Powerlevel10k, zoxide
- **nvim**: Neovim with LazyVim, LSP, Telescope, Neo-tree, and Lazygit integration
- **lazygit**: Git TUI configuration
- **git**: Git configuration (coming soon)

## Quick Start

### Prerequisites

```bash
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install required tools
brew install stow neovim lazygit
```

### Installation

1. Clone this repository:
```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

2. Use GNU Stow to create symlinks:
```bash
# Install all configs
stow zsh nvim lazygit

# Or install specific configs
stow zsh    # Only zsh config
stow nvim   # Only nvim config
```

3. Source your zsh config:
```bash
source ~/.zshrc
```

4. Open nvim to install plugins:
```bash
nvim
```
The first time you open nvim, it will automatically install all plugins.

## Nvim Keybindings (Simple!)

### Tabs (Super Simple)
- `Space + tn` - New tab
- `Space + ]` - Next tab
- `Space + [` - Previous tab
- `Space + tc` - Close tab
- `gt` / `gT` - Next/Previous tab (vim default)

### Splits
- `Space + sv` - Split vertically
- `Space + sh` - Split horizontally
- `Ctrl + h/j/k/l` - Navigate between splits
- `Space + sx` - Close split

### File Navigation
- `Space + e` - Toggle file explorer
- `Space + ff` - Find files (fuzzy)
- `Space + fg` - Find text in files
- `Space + fb` - Find buffers

### Git
- `Space + gg` - Open LazyGit

### LSP
- `gd` - Go to definition
- `gr` - Find references
- `K` - Hover documentation
- `Space + rn` - Rename
- `Space + ca` - Code actions

### General
- `Space + w` - Save file
- `Space + q` - Quit
- `jk` - Exit insert mode

## Uninstall

To remove symlinks:
```bash
cd ~/.dotfiles
stow -D zsh nvim lazygit  # Remove all
stow -D nvim              # Remove only nvim
```

## Structure

```
~/.dotfiles/
├── zsh/           # Zsh configuration files
│   ├── .zshrc
│   ├── .zsh_aliases
│   ├── .zsh_functions
│   ├── .zsh_paths
│   ├── .matt_greeting.sh
│   └── p10k.zsh
├── nvim/          # Neovim configuration
│   ├── init.lua
│   └── lua/
│       ├── config/
│       └── plugins/
└── lazygit/       # Lazygit configuration
    └── config.yml
```

## Credits

Built with love by Matt
