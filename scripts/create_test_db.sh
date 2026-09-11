#!/bin/bash
# Initialize the WordPress database and user permissions
sudo mysql -u root << 'MYSQL_SCRIPT'
CREATE DATABASE IF NOT EXISTS wordpress_db;
CREATE USER IF NOT EXISTS 'wp_user'@'localhost' IDENTIFIED BY 'Password123!';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wp_user'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT