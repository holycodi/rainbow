#!/bin/bash
#Script Name	:AWS EC2 user command + jenkins + nginx
#Description	:This will install linux on aws and install and configure NGINX
#Author       	:Victor Biga                                                
#Email         	:victor.biga@gmail.com                                           
#Version info   :1.0
#Test date      :
#Test result    :NA


#Run the update to make sure repository contains all the latest apps
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E '%{rhel}').noarch.rpm -y
sudo yum update -y


#Jenkins install
sudo yum install java-1.8.0-openjdk.x86_64 -y
sudo cp /etc/profile /etc/profile_backup
echo 'export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk' | sudo tee -a /etc/profile
echo 'export JRE_HOME=/usr/lib/jvm/jre' | sudo tee -a /etc/profile
source /etc/profile
cd ~ 
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo chmod 777 /var/lib/jenkins/secrets/
sudo chmod 777 /var/lib/jenkins/secrets/initialAdminPassword
sudo cp /var/lib/jenkins/secrets/initialAdminPassword /home/ec2-user/jenkins_initial_password
sudo chmod 700 /var/lib/jenkins/secrets/initialAdminPassword
sudo chmod 700 /var/lib/jenkins/secrets/



