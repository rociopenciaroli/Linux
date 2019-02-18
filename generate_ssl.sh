#!/bin/bash


function pause(){
   read -p "$*"
}


pause ' script para la generacion de Certificado SSL -  Presione Enter para generar el certificado'

cd acme-client/

php bin/acme setup --server letsencrypt --email alejandrocdecastro@gmail.com
php bin/acme issue --domains aledc.com:www.aledc.com --path /home/u174569164/public_html:/home/u174569164/public_html --server letsencrypt

cd /home/u174569164/acme-client/data/certs/acme-v01.api.letsencrypt.org.directory/aledc.com


pause  'generando certificao que va en el Primer bloque:'
cat fullchain.pem


pause 'generando  la KEY  que va en el Segundo bloque:'
cat key.pem
