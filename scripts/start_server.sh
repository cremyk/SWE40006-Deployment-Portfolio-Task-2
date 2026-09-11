#!/bin/bash
# Start and enable Apache HTTPD, MariaDB, and PHP-FPM services
sudo systemctl start mariadb.service
sudo systemctl start httpd.service
sudo systemctl start php-fpm.service

sudo systemctl enable mariadb.service
sudo systemctl enable httpd.service
sudo systemctl enable php-fpm.service