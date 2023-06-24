# debian:buster is a Linux base image. 
FROM debian:buster

# update and upgrade my pakages.
RUN apt update -y && apt upgrade -y

# installing nginx and openssl
RUN apt install nginx -y && apt install openssl -y && service nginx start

# # generates a self-signed SSL/TLS certificate and private key using openssl in /etc/nginx/ssl
RUN mkdir /etc/nginx/ssl
RUN mkdir wordpress
RUN openssl req -x509 -newkey rsa:2048 -keyout /etc/nginx/ssl/hazaouya.key -out /etc/nginx/ssl/hazaouya.crt -nodes -days 365 -subj "/CN=hazaouya.com"

#Copy the Config file
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

#the only Port Allowed
EXPOSE	443

#Run nginx
CMD ["nginx", "-g", "daemon off;"]