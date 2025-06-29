#!/bin/bash

# Caminho para o diretório das dotfiles (o diretório atual)
DOTFILES_DIR=$(pwd)

echo "🔧 Instalando configs Hyprdots a partir de: $DOTFILES_DIR"

# Lista das pastas que vão para ~/.config
CONFIG_FOLDERS=("htop" "hypr" "kitty" "nwg-bar" "nwg-look" "waybar" "wofi")

# Cria ~/.config se não existir
mkdir -p "$HOME/.config"

for folder in "${CONFIG_FOLDERS[@]}"; do
    echo "📁 Linkando $folder para ~/.config/$folder"
    ln -sf "$DOTFILES_DIR/$folder" "$HOME/.config/$folder"
done

echo "✅ Configurações instaladas com sucesso!"
