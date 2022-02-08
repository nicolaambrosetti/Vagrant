#!/bin/bash

echo "Db creating provisioning - begin"

ROOTPASSWD=Password&1

DBNAME=vagrant

DBUSER=vagrant

DBPASSWD=vagrantpass

echo "Creating new db $DBNAME"

sudo mysql -u root -e "CREATE DATABASE $DBNAME"

sudo mysql -uroot -e "CREATE USER '$DBUSER'@'%' identified by '$DBPASSWD'"

sudo mysql -uroot -e "grant all privileges on $DBNAME.* to '$DBUSER'@'%' WITH grant option"

echo "Db creating provisioning - end"