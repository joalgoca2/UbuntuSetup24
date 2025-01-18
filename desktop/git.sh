#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

git.sh(){
    	# Verificar si Git está instalado
	if ! command -v git &> /dev/null; then
	    echo "Git no está instalado. Instalándolo..."
	    sudo apt update
	    sudo apt install git -y
	    echo "Git ha sido instalado correctamente."
	else
	    echo "Git ya está instalado."
	fi
}
