#!/usr/bin/env bash

cat << EOF >> /etc/apache2/apache2.conf
<Directory /srv/>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
</Directory>
EOF