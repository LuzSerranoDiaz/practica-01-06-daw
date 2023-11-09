#!/bin/bash
 
# Para mostrar los comandos que se van ejecutando (x) y parar en error(e)
set -ex

# Actualizamos la lista de repositorios
 apt update
# ACtualizamos los paquetes del sistema
# apt upgrade -y

#instalamos zip
sudo apt install zip -y

#instalamos tar
sudo apt install tar

#borrar versiones anteriores en tmp wordpress
rm -rf /tmp/latest.tar.gz

#poner wordpress en tmp
wget http://wordpress.org/latest.tar.gz -P /tmp

#descomprimimos el archivo gz
gunzip /tmp/latest.tar.gz

#descomprimimos el archivo tar
tar -xzvf /tmp/latest.tar.gz -C /tmp

