#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

make.sh() {
	# Verificar si Make está instalado
	if ! command -v make &> /dev/null; then
	    echo "Make no está instalado. Instalándolo..."
	    
	    # Actualizar los paquetes e instalar Make
	    sudo apt update
	    sudo apt install make -y
	    
	    echo "Make ha sido instalado correctamente."
	else
	    echo "Make ya está instalado."
	fi
}
