#!/bin/bash
# Safely stop web and database daemons during deployment updates
isExistApp=$(pgrep httpd)
if [[ -n $isExistApp ]]; then
    sudo systemctl stop httpd.service
fi

isExistApp=$(pgrep mariadb)
if [[ -n $isExistApp ]]; then
    sudo systemctl stop mariadb.service
fi

isExistApp=$(pgrep php-fpm)
if [[ -n $isExistApp ]]; then
    sudo systemctl stop php-fpm.service
fi