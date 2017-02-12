FROM debian
MAINTAINER David García Gómez "davgargom91@gmail.com"

RUN apt-get update 
RUN apt-get install -y apache2 libapache2-mod-fastcgi
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/*
RUN a2enmod fastcgi actions
RUN a2enconf php5-fpm
RUN cat << EOF >> /etc/apache2/apache2.conf
<Directory /srv/>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
</Directory>
EOF

RUN service apache2 restart

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

#EXPOSE 80
ADD ["index.html","/var/www/html/"]
ADD ["000-default.conf","/etc/apache2/sites-available/"]
ADD ["info.php","/var/www/html/"]
ADD ["php5-fpm.conf","/etc/apache2/conf-available/"]

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

