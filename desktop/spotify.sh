#!/bin/bash
#
# Developed by Jose Alberto Gonzalez Caballero
# Contact joalgoca2@gmail.com
# Gracias ChatGPT
# Ubuntu 24.04
# 17/01/2025
#

spotify.sh(){	
        if ! command -v snap &> /dev/null
	then
	    echo "Snap no está instalado. Instalando Snap..."
	    sudo apt update
	    sudo apt install snapd -y
	    echo "Snap ha sido instalado."
	else
	    echo "Snap ya está instalado."
	fi
	if ! command -v spotify &> /dev/null
	then		
		# Instalar Spotify con Snap
		echo "Instalando Spotify..."
		sudo snap install spotify

		echo "Spotify ha sido instalado correctamente."
	else
	    echo "Spotify ya está instalado."
	fi
}
