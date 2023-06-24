#!/bin/bash
service mysql start

# Create DataBase
mysql -e "create database $DB_NAME;"

# Create a Server User
mysql -e "create user "$DB_USER"@'%' identified by '$DB_PASS';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' ;"
mysql -e "FLUSH PRIVILEGES;"

service mysql stop

mysqld