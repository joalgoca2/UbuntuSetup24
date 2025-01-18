#!/bin/bash
#
# Developed by Jose Alberto Gonzalez Caballero
# Contact joalgoca2@gmail.com
# Gracias ChatGPT
# Ubuntu 24.04
# 17/01/2025
#

postman.sh(){	
    if ! command -v snap &> /dev/null
	then
	    echo "Snap no está instalado. Instalando Snap..."
	    sudo apt update
	    sudo apt install snapd -y
	    echo "Snap ha sido instalado."
	else
	    echo "Snap ya está instalado."
	fi
	if ! command -v postman &> /dev/null
	then
		# Instalar Postman con Snap
		echo "Instalando Postman..."
		sudo snap install postman
		echo "Postman ha sido instalado correctamente."
	else
	    echo "Postman ya está instalado."
	fi
}
