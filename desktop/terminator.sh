#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

terminator.sh() {
	# Verificar si Terminator está instalado
	if ! command -v terminator &> /dev/null; then
	    echo "Terminator no está instalado. Instalándolo..."
	    
	    # Actualizar los paquetes e instalar Terminator
	    sudo apt update
	    sudo apt install terminator -y
	    
	    echo "Terminator ha sido instalado correctamente."
	else
	    echo "Terminator ya está instalado."
	fi
}
