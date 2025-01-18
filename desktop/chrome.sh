#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

# Index function
chrome.sh(){
	# Verificar si Google Chrome está instalado
	if command -v google-chrome &> /dev/null
	then
	    echo "Google Chrome ya está instalado."
	else
	    echo "Google Chrome no está instalado. Procediendo con la instalación..."

	    # Descargar el paquete .deb de Google Chrome
	    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

	    # Instalar Google Chrome
	    sudo dpkg -i google-chrome*.deb

	    # Resolver posibles dependencias faltantes
	    sudo apt --fix-broken install -y

	    # Iniciar Google Chrome
	    google-chrome &

	    echo "Google Chrome se ha instalado correctamente."
	fi
}
