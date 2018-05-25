#!/bin/bash
#Script Name	:NGINX install
#Description	:This will install NGINX                                                                               
#Author       	:Victor Biga                                                
#Email         	:victor.biga@gmail.com                                           
#Version info   : 1.0

#Run the update to make sure repository contains all the latest apps
sudo yum update -y

#Installing NGINX
#Add Nginx Repository
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E '%{rhel}').noarch.rpm -y
#Install Nginx
sudo yum install nginx -y
#Start Nginx
sudo systemctl start nginx
#Nginx to start when system boots
sudo systemctl enable nginx