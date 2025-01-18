#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

enpass.sh() {
	# Verificar si Enpass está instalado
	if ! command -v enpass &> /dev/null; then
	    echo "Enpass no está instalado. Instalándolo..."
	    
	    echo "deb https://apt.enpass.io/  stable main" | sudo tee /etc/apt/sources.list.d/enpass.list
	    wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo tee /etc/apt/trusted.gpg.d/enpass.asc
	    
	    # Actualizar los paquetes e instalar Enpass
	    sudo apt update
	    sudo apt install enpass
	    
	    echo "Enpass ha sido instalado correctamente."
	else
	    echo "Enpass ya está instalado."
	fi
}
