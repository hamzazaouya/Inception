# debian:buster is a Linux base image. 
FROM debian:buster

# update and upgrade my pakages.
RUN apt update -y && apt upgrade -y

# install PHP FastCGI Process Manager.
RUN mkdir run/php/
WORKDIR /run/php/
RUN apt install php7.3-fpm php7.3-mysql mariadb-client -y
WORKDIR /

#  Download and install the WP-CLI 
RUN apt install curl -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
     chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY tools/wp_script.sh /

CMD [ "sh", "/wp_script.sh"]