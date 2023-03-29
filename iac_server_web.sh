#!/bin/bash

echo "Iniciando criação do servidor"

echo "Baixando e instalando atualizações!"
apt-get update

apt-get upgrade -y

echo "Servidor Apache e ferramentas..."
apt-get install apache2 -y

apt-get install unzip -y

echo "Baixando os arquivos da aplicação..."
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

echo "Enviando projeto para o servidor..."
cd linux-site-dio-main

cp -R * /var/www/html/

echo "Servidor iniciado."



