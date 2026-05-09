
. "$HOME/.local/bin/env"

# bun completions
[ -s "/Users/anurag/.bun/_bun" ] && source "/Users/anurag/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/Users/anurag/Library/Python/3.9/bin:$PATH"

# Added by Antigravity
export PATH="/Users/anurag/.antigravity/antigravity/bin:$PATH"

# opencode
export PATH=/Users/anurag/.opencode/bin:$PATH

# Custom aliases
alias pf='pnpm run format:fix && pnpm run validate'
alias gs='git stash'
alias gsa='git stash apply'
alias cf="claude --dangerously-skip-permissions"
alias cy="codex --yolo"

export PATH="$HOME/.local/bin:$PATH"

# Autosuggestions & syntax highlighting
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#506477"

# >>> Boo >>>
if [[ -f "$HOME/.config/boo/boo.zsh" ]]; then
  source "$HOME/.config/boo/boo.zsh"
fi
# <<< Boo <<<
