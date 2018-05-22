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

#Create the /etc/ssl/nginx directory

sudo mkdir /etc/ssl/nginx
cd /etc/ssl/nginx

#Copy the nginx-repo.key and nginx-repo.crt files provided by NGINX, Inc. to the /etc/ssl/nginx/ directory:
sudo cp nginx-repo.crt /etc/ssl/nginx/
sudo cp nginx-repo.key /etc/ssl/nginx/

#Install the required ca-certificates dependency
sudo yum install ca-certificates

#Download the nginx-plus-repo file and copy it to the /etc/yum.repos.d/ directory
sudo wget -P /etc/yum.repos.d https://cs.nginx.com/static/files/nginx-plus-amazon.repo

