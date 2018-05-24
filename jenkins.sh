#!/bin/bash
#Script Name	:AWS EC2 user command + jenkins
#Description	:This will install linux on aws and install and configure NGINX                                                                               
#Author       	:Victor Biga                                                
#Email         	:victor.biga@gmail.com                                           
#Version info   : 1.0

#Run the update to make sure repository contains all the latest apps
sudo yum update -y
#Add the Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkinsci.org/redhat/jenkins.repo
#Import a key file from Jenkins-CI to enable installation from the package
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
#Install Jenkins
sudo yum install jenkins -y
#Start Jenkins as a service
sudo service jenkins start