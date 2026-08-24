# Matt's Zsh Configuration
# This file sources the main config from .config/zsh/.zshrc

if [[ -f ~/.config/zsh/.zshrc ]]; then
  source ~/.config/zsh/.zshrc
fi

alias claude-mem='bun "$HOME/.claude/plugins/marketplaces/thedotmack/plugin/scripts/worker-service.cjs"'
export PATH="$HOME/.maestro/bin/maestro/bin:$PATH"
if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init - zsh)"
fi
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.terragrunt/bin:$PATH"

# opencode
export PATH=/Users/mattenarle/.opencode/bin:$PATH

# bun completions
[ -s "/Users/mattenarle/.bun/_bun" ] && source "/Users/mattenarle/.bun/_bun"
