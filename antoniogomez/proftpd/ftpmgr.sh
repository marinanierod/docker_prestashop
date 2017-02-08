#!/bin/bash
/usr/sbin/proftpd
CHOICE='foo'
while [[ ${CHOICE,,} != 'salir' ]]; do
        printf "Escribe 'salir' para terminar el contenedor, o bien, 'docker stop <contenedor>'\n"
        read -p 'Proftpd hosting cmd: ' CHOICE
done
