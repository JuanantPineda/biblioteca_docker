#!/bin/bash
while ! mysql -u ${USER} -p${PASS} -h ${HOST}  -e ";" ; do
	sleep 1
done	
mysql -u ${USER} -p${PASS} -h ${HOST} ${DB} < /opt/biblioteca.sql
sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
apache2ctl -D FOREGROUND
