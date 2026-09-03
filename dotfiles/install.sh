#!/bin/bash
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf "$DOTFILES_DIR/.bashrc" ~/.bashrc
ln -sf "$DOTFILES_DIR/.bash_aliases" ~/.bash_aliases
ln -sf "$DOTFILES_DIR/vscode/settings.json" ~/.config/Code/User/settings.json
ln -sf "$DOTFILES_DIR/vscode/keybindings.json" ~/.config/Code/User/keybindings.json

cat "$DOTFILES_DIR/vscode/extensions.txt" | xargs -L 1 code --install-extension

echo "Готово! Все дотфайлы подключены."