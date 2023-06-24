#!/bin/bash

# Create a wordpress directory
mkdir -p /wordpress

# Navigate to wordpress directory
cd /wordpress

# Download Wordpress
wp core download --allow-root

# Configuring Database Connection
wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST

# Configuring Wordpress Server
wp core install --allow-root --url=$DOMAIN_NAME --title=INCEPTION --admin_user=$ADMIN_NAME --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL

# Create User 1 as a subscriber
wp user create --allow-root $USER1_NAME $USER1_EMAIL --role=$USER1_ROLE --user_pass=$USER1_PASS

#Create User 2 as a author
wp user create --allow-root $USER2_NAME $USER2_EMAIL --role=$USER2_ROLE --user_pass=$USER2_PASS

#Create User 3 as a contributor
wp user create --allow-root $USER3_NAME $USER3_EMAIL --role=$USER3_ROLE --user_pass=$USER3_PASS

# Start PHP-FPM
php-fpm7.3 --nodaemonize