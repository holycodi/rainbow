#!/bin/bash
#Script Name	:AWS + NGINX                                                                                            
#Description	:This will install linux on aws and install and configure NGINX                                                                               
#Author       	:Victor Biga                                                
#Email         	:victor.biga@gmail.com                                           
#Version info   : 1.0

#Run the update to make sure repository contains all the latest apps
sudo yum update -y

#Create a test file in users home directory
cat > /home/ec2-user/text_file.txt 
some text in the text_file.txt

