#!/usr/bin/env bash

sed -ri "s/ip-publica/${PHP1IP}/" /etc/php5/fpm/pool.d/www.conf

