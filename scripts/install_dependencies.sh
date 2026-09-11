#!/bin/bash
# Update OS packages and install LAMP stack for Amazon Linux 2023
sudo dnf update -y
sudo dnf install -y httpd mariadb105-server php php-fpm php-mysqli php-json php-devel