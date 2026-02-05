#!/bin/bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR..."

# Symlink .zshrc
if [ -f "$HOME/.zshrc" ] && [ ! -L "$HOME/.zshrc" ]; then
  echo "Backing up existing .zshrc to .zshrc.backup"
  cp "$HOME/.zshrc" "$HOME/.zshrc.backup"
fi
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
echo "Linked .zshrc"

# Install scripts to ~/.local/bin and ~/bin
mkdir -p "$HOME/.local/bin" "$HOME/bin"

for script in "$DOTFILES_DIR/scripts/"*; do
  name="$(basename "$script")"
  case "$name" in
    pr-comments)
      ln -sf "$script" "$HOME/bin/$name"
      echo "Linked $name -> ~/bin/$name"
      ;;
    env)
      ln -sf "$script" "$HOME/.local/bin/$name"
      echo "Linked $name -> ~/.local/bin/$name"
      ;;
    *)
      ln -sf "$script" "$HOME/.local/bin/$name"
      echo "Linked $name -> ~/.local/bin/$name"
      ;;
  esac
done

echo ""
echo "Done! Restart your shell or run: source ~/.zshrc"
