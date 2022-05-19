From ubuntu
Maintainer pragela
Env DEBIAN_FRONTEND noninteractive
Run apt update
Run apt upgrade -y
Run apt install apache2 -y
ENV APACHE_RUN_DIR=/var/run/apache2
ENV APACHE_RUN_USER=www-data
ENV APACHE_RUN_GROUP=www-data
ENV APACHE_LOG_DIR=/var/log/apache2
Run mkdir /var/run/apache2
copy . /var/www/html/
cmd ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80

