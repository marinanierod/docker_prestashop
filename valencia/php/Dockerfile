FROM debian
RUN apt update -y
RUN apt-get -y install php5-fpm php5-mysql php5-gd php5 php5-cli php5-gd php5-mcrypt php5-memcache
RUN sed -ri 's/^listen.*/listen=ip-publica:9000/' /etc/php5/fpm/pool.d/www.conf
COPY phpconf.sh /root/phpconf.sh
RUN chmod +x /root/phpconf.sh
RUN /root/phpconf.sh

entrypoint /usr/sbin/php5-fpm —nodaemonize

cmd ["php5-fpm"]
