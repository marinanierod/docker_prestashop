FROM debian
MAINTAINER Marina Nievas Rodríguez "marnierod@gmail.com"

RUN apt-get update && apt-get -y upgrade
RUN apt-get install debconf-utils
RUN echo "mysql-server-5.5 mysql-server/root_password password string root" | debconf-set-selections \
	&& echo "mysql-server-5.5 mysql-server/root_password_again password string root" | debconf-set-selections \
	&& apt-get install -y mysql-server
ADD my.cnf /etc/mysql/conf.d/my.cnf 
ADD script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
RUN apt-get install software-properties-common
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
RUN add-apt-repository 'deb [arch=amd64,i386] http://mariadb.kisiek.net/repo/10.0/debian jessie main'
RUN apt-get update
RUN apt-get install -y rsync galera mariadb-galera-server
COPY galera.cnf /etc/mysql/conf.d/
ENTRYPOINT ["mysqld"]
RUN service mysql stop
RUN service mysql bootstrap

#EXPOSE 3306

CMD ["/usr/local/bin/script.sh"]
