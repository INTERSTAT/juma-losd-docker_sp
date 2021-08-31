FROM ubuntu:xenial

ENV MYSQL_PWD root
RUN echo "mysql-server mysql-server/root_password password $MYSQL_PWD" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password $MYSQL_PWD" | debconf-set-selections

RUN apt-get update -y \ 
 && apt-get install -y screen openjdk-8-jdk mysql-server-5.7 maven vim apache2 php libapache2-mod-php
 
COPY start.sh /juma/start.sh
COPY juma-uplift-master /juma/juma-uplift-master
COPY juma-api /var/www/html/juma-api
COPY ports.conf /etc/apache2/ports.conf
COPY apache2.conf /etc/apache2/apache2.conf

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
ENV PATH $JAVA_HOME/bin:$PATH

RUN chmod +x /juma/start.sh

EXPOSE 8889

CMD ["/bin/bash", "/juma/start.sh"]
