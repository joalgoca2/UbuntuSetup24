#!/bin/bash
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

#==================================== Imports ===============================================

# Import Sytem
. system/import.sh

# Import Desktop
. desktop/import.sh

# Presentation function and options
run_program(){
	welcome
	while true; do
		
		read -p "Ingresa un comando (o 'e' para salir): " program

		case $program in

		    # Performs the function with the name of the variable passed
		    e) 
			    	clear		    	
				echo "Saliendo del programa..."
				exit
				;;
		    "") 
				echo "No ingresaste un comando, intenta de nuevo."
				;;
		    $program) 
			    welcome
			    $program
		        	;;

		esac
	done
}

welcome(){
	clear
	echo -e "
===================================

Ubuntu 24.04 Aplications Installer 
Created by Jose Alberto Gonzalez

===================================

Options:

########## System
 "
	for file in $(ls ./system)
	do
	    if [ $file != import.sh ]
	    then
		echo $file
	    fi

	done;
	echo -e "
########## Desktop
"
	for file in $(ls ./desktop)
	do
	    if [ $file != import.sh ] && [ $file != files ]
	    then
		echo $file
	    fi

	done;
	echo -e "

e - Exit

==================================
"
}

run_program
