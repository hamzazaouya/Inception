# debian:buster is a Linux base image. 
FROM debian:buster

RUN apt update -y && apt upgrade -y

# install Mariadb
RUN apt install mariadb-server -y

COPY tools/db.sh .

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

CMD ["bash", "db.sh"]