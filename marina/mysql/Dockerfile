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

#EXPOSE 3306

CMD ["/usr/local/bin/script.sh"]
