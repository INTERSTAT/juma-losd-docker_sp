#!/bin/bash

chmod -R 777 /var/www/html/juma-api/temp/
chmod -R 777 /juma/juma-uplift-master/r2rml_updated/
chmod -R 777 /juma/juma-uplift-master/userfiles/
service apache2 start
service mysql start
a2enmod proxy && a2enmod proxy_http && service apache2 restart
cd /juma/juma-uplift-master
screen -S juma -d -m mvn jetty:run -Djetty.port=8888
read
