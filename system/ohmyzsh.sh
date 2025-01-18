#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

ohmyzsh.sh(){
    # Verificar si Oh My Zsh está instalado
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        echo "Oh My Zsh no está instalado. Instalándolo..."
        
        # Verificar si Zsh está instalado
        if ! command -v zsh &> /dev/null; then
            echo "Zsh no está instalado. Instalándolo..."
            sudo apt update
            sudo apt install -y zsh
        else
            echo "Zsh ya está instalado."
        fi
        
        # Instalar Oh My Zsh
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
        
        echo "Oh My Zsh ha sido instalado correctamente."
        chsh -s $(which zsh)
        echo "Reinicia la sesión para aplicar los cambios"
    else
        echo "Oh My Zsh ya está instalado."
    fi
}
