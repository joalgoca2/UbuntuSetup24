#!/bin/bash
#
# Developed by Jose Alberto Gonzalez Caballero
# Contact joalgoca2@gmail.com
# Gracias ChatGPT
# Ubuntu 24.04
# 17/01/2025
#

docker.sh(){
	# Verificar si curl está instalado
	if ! command -v curl &> /dev/null; then
	    echo "curl no está instalado. Instalándolo..."
	    sudo apt update
	    sudo apt install -y curl
	    echo "curl ha sido instalado correctamente."
	else
	    echo "curl ya está instalado."
	fi

	# Verificar si Docker está instalado
	if ! command -v docker &> /dev/null; then
	    echo "Docker no está instalado. Instalándolo..."
	    
	    # Actualizar los paquetes e instalar dependencias
	    sudo apt update
	    sudo apt install -y ca-certificates curl gnupg
	    
	    # Agregar la clave GPG oficial de Docker
	    sudo install -m 0755 -d /etc/apt/keyrings
	    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
	    sudo chmod a+r /etc/apt/keyrings/docker.gpg
	    
	    # Agregar el repositorio de Docker
	    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	    
	    # Actualizar los paquetes e instalar Docker
	    sudo apt update
	    sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	    
	    echo "Docker ha sido instalado correctamente."
	else
	    echo "Docker ya está instalado."
	fi
	
	# Verificar si Docker Compose está instalado
	if ! command -v docker-compose &> /dev/null
	then
	    echo "Docker Compose no está instalado. Instalando Docker Compose..."
	    
	    # Descargar la última versión estable de Docker Compose
	    sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
	    
	    # Dar permisos de ejecución
	    sudo chmod +x /usr/local/bin/docker-compose
	    
	    echo "Docker Compose se ha instalado correctamente."
	else
	    echo "Docker Compose ya está instalado."
	fi
}
