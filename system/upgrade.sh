#!/bin/sh
#
# Developed by Jose Alberto Gonzalez
# Contact joalgoca2@gmail.com
#

upgrade.sh(){
	clear;
	sudo apt-get autoremove;
	sudo apt-get update;
	sudo apt-get upgrade;
}
