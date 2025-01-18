#!/bin/bash
#
# Developed by Jose Alberto Gonzalez Caballero
# Contact joalgoca2@gmail.com
# Gracias ChatGPT
# Ubuntu 24.04
# 17/01/2025
#

dbeaver.sh(){	
        # Verificar si DBeaver está instalado
	if ! command -v dbeaver &> /dev/null
	then
	    echo "DBeaver no está instalado. Instalando DBeaver..."

	    # Agregar el repositorio de DBeaver
	    sudo add-apt-repository ppa:serge-rider/dbeaver-ce -y

	    # Actualizar los repositorios
	    sudo apt update

	    # Instalar DBeaver Community Edition
	    sudo apt install dbeaver-ce -y

	    echo "DBeaver se ha instalado correctamente."
	else
	    echo "DBeaver ya está instalado."
	fi
}
