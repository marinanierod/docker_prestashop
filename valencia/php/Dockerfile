FROM debian
RUN apt update -y
RUN apt install php5 php5-memcached php5-fpm -y
RUN sed -ri 's/^listen.*/listen=127.0.0.1:9000/' /etc/php5/fpm/pool.d/www.conf

expose 9000

entrypoint /usr/sbin/php5-fpm --nodaemonize

cmd ["php5-fpm"]
