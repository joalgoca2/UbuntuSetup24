#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

MongoDBCompass.sh() {
	# Verificar si MongoDB Compass está instalado
	if command -v mongodb-compass &> /dev/null
	then
	    echo "MongoDB Compass ya está instalado."
	else
	    echo "MongoDB Compass no está instalado. Procediendo con la instalación..."

	    # Descargar el paquete .deb de MongoDB Compass
	    wget https://downloads.mongodb.com/compass/mongodb-compass_1.45.1_amd64.deb -O mongodb-compass.deb

	    # Instalar MongoDB Compass
	    sudo dpkg -i mongodb-compass.deb

	    # Resolver posibles dependencias faltantes
	    sudo apt --fix-broken install -y

	    # Limpiar el archivo descargado
	    rm mongodb-compass.deb

	    echo "MongoDB Compass se ha instalado correctamente."
	fi
}
