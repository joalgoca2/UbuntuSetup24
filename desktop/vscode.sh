#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

vscode.sh() {
	# Verificar si VSCode está instalado
	if ! command -v code &> /dev/null; then
	    echo "VSCode no está instalado. Instalándolo..."
	    
	    # Descargar la clave GPG de Microsoft
	    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null
	    
	    # Agregar el repositorio de VSCode
	    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
	    
	    # Actualizar e instalar VSCode
	    sudo apt update
	    sudo apt install code -y
	    
	    echo "VSCode ha sido instalado correctamente."
	else
	    echo "VSCode ya está instalado."
	fi
}
