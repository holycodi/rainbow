#!/bin/bash
#Script Name	:AWS + NGINX                                                                                            
#Description	:This will install linux on aws and install and configure NGINX                                                                               
#Author       	:Victor Biga                                                
#Email         	:victor.biga@gmail.com                                           
#Version info   : 1.0

#Run the update to make sure repository contains all the latest apps
sudo yum update -y

#Create a test file in users home directory
{
  echo 'This installation has worked'
  echo 'file has been created'
} >test.txt

#Installing NGINX

#Add Nginx Repository
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E '%{rhel}').noarch.rpm -y
#Install Nginx
sudo yum install nginx -y
#Start Nginx
sudo systemctl start nginx
#allow HTTP and HTTPS traffic
sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload
#Nginx to start when system boots
sudo systemctl enable nginx

