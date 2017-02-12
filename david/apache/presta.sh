#!/usr/bin/env bash
#
# descarga y descompresión de prestashop

if [[ ! -d /srv/www/prestashop ]]; then
    wget -P /tmp  https://download.prestashop.com/download/releases/prestashop_1.6.1.11.zip
    unzip -d /srv/www /tmp/prestashop_1.6.1.11.zip
    chown www-data. -R /srv
fi
