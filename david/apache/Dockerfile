FROM debian
MAINTAINER David García Gómez "davgargom91@gmail.com"

COPY sources.list /etc/apt/sources.list
RUN apt-get update 
RUN apt-get install -y apache2 libapache2-mod-fastcgi unzip wget
COPY 000-prestashop.conf /etc/apache2/sites-available/000-prestashop.conf
COPY presta.sh /root/presta.sh
RUN chmod +x /root/presta.sh
RUN /root/presta.sh
RUN a2enmod fastcgi actions
COPY php5-fpm.conf /etc/apache2/conf-available/php5-fpm.conf
RUN a2enconf php5-fpm
COPY scriptapache.sh /root/scriptapache.sh
RUN chmod +x /root/scriptapache.sh
RUN /root/scriptapache.sh
RUN a2dissite 000-default
RUN a2ensite 000-prestashop
RUN service apache2 restart

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
