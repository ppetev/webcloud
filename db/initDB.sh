#!/bin/bash

set -e
set -x

mysql_install_db

/usr/sbin/mysqld &
mysql_pid=$!

until mysqladmin ping &>/dev/null; do
  echo -n "."; sleep 0.2
done

mysql -e "create database predcomposer"
mysql -e "create user 'predcomposer'@'%' identified by 'predcomposer'"
mysql -e "grant all privileges on predcomposer.* to 'predcomposer'@'%'"

mysql < /tmp/prepareSchema.sql

mysqladmin shutdown
wait $mysql_pid

/usr/sbin/mysqld
