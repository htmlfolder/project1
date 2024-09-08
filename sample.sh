#!/bin/bash

yum update -y
yum install httpd git -y
systemctl start httpd
systemctl enable httpd

cd /var/www/html/
git clone https://github.com/htmlfolder/Devops_project.git .
chmod 777 /var/www/html/index.html
chmod 777 /var/www/html/home.html
systemctl restart httpd
