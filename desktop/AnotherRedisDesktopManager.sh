#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

AnotherRedisDesktopManager.sh() {
		echo "Another Redis Desktop Manager no está instalado. Instalándolo..."
		
		sudo snap install another-redis-desktop-manager
		sudo snap connect another-redis-desktop-manager:ssh-keys
		
		echo "Redis Desktop Manager ha sido instalado correctamente."

}
