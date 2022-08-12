#!/bin/bash

#Atualizar o servidor
echo "Atualizando o servidor"
apt update
apt upgrade -y
##################################################################

echo ""

#Instalar o apache2 e unzip
echo "Instalando apache2..."
apt install apache2 -y #Apache2
echo "Instalando unzip..."
apt install unzip -y #Unzip
#################################################################

echo ""

#Entrando no diretório /tmp e colocando a aplicação nele
echo "Entrando no diretório /tmp e colocando a devida aplicação do site DIO"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
###############################################################

echo ""

#Copaindo arquivos para o diretório padrão do apache
echo "Copiando arquivos para o diretório padrão do apache"
cd linux-site-dio-main
cp -R * /var/www/html #Aqui é o diretório padrão do apache, onde o site (servidor web) pode ser colocado.
##############################################################
