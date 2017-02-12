FROM debian
MAINTAINER David García Gómez "davgargom91@gmail.com"

RUN apt-get update 
RUN apt-get install -y apache2 
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/*
RUN a2enmod proxy proxy_fcgi
RUN service apache2 restart

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

#EXPOSE 80
ADD ["index.html","/var/www/html/"]
ADD ["000-default.conf","/etc/apache2/sites-available/"]
ADD ["info.php","/var/www/html/"]

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]