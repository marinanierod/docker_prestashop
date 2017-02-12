FROM debian
MAINTAINER David García Gómez "davgargom91@gmail.com"

COPY sources.list /etc/apt/sources.list
RUN apt-get update 
RUN apt-get install -y apache2 libapache2-mod-fastcgi
COPY php5-fpm.conf /etc/apache2/conf-available
RUN a2enmod fastcgi actions
RUN a2enconf php5-fpm
RUN service apache2 restart

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

#ADD ["index.html","/var/www/html/"]
#ADD ["000-default.conf","/etc/apache2/sites-available/"]
ADD ["info.php","/var/www/html/"]

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
