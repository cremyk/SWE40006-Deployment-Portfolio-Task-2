#!/bin/bash
# Grant Apache web server daemon ownership and set standard 755 directory permissions
sudo chown -R apache:apache /var/www/html/
sudo chmod -R 755 /var/www/html/