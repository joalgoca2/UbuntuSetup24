#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
# 17/01/2025

#

indicator.sh(){
	# Verificar si Indicator está instalado
	if ! dpkg -l | grep -q indicator-multiload; then
	    echo "Indicator no está instalado. Instalándolo..."
	    sudo apt update
	    sudo apt install indicator-multiload -y
	    echo "Indicator ha sido instalado correctamente."
	else
	    echo "Indicator ya está instalado."
	fi
}
