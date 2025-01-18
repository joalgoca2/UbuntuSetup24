#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

ngrok.sh() {
	# Verificar si Ngrok está instalado
	if ! command -v ngrok &> /dev/null
	then
	    echo "Ngrok no está instalado. Instalando Ngrok..."

	    # Descargar el paquete de Ngrok desde el sitio oficial
	    curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list \
  && sudo apt update \
  && sudo apt install ngrok
	    echo "Ngrok se ha instalado correctamente."
	    # Preguntar por el token de Ngrok
		read -p "Por favor, ingresa tu token de Ngrok: " token

		# Verificar si el token está vacío
		if [ -z "$token" ]; then
		    echo "El token no puede estar vacío. Abortando la configuración."
		    exit 1
		fi

		# Configurar el token en Ngrok
		ngrok config add-authtoken "$token"

		echo "Token de Ngrok configurado correctamente."
	else
	    echo "Ngrok ya está instalado."
	fi
}
