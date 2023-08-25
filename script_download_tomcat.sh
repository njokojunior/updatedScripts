#!/bin/bash
# TOMCAT.SH

#change hostname
sudo hostnamectl set-hostname TOMCAT
cd /opt

#install git and wget nano vim tree unzip
sudo yum install git wget nano vim tree unzip -y

#installing java11 (openjdk)
sudo yum install java-11-openjdk-devel -y

#downloadding tomcat
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.12/bin/apache-tomcat-10.1.12.zip

#extract and rename at the same time
sudo unzip apache-tomcat-10.1.12.zip # -d tomcat10

sudo mv apache-tomcat-10.1.12 tomcat10

#Assign executable permission to the tomcat home directory and all its sub directories
sudo chmod 777 -R /opt/tomcat10
sudo chown ec2-user -R /opt/tomcat10


echo "End of tomcat installation"

### start tomcat
#sh /opt/tomcat10/bin/startup.sh


###create a soft link to start and stop tomcat
###this will enable us to manage tomcat as a service

sudo ln -s /opt/tomcat10/bin/startup.sh /usr/bin/start-tomcat
sudo ln -s /opt/tomcat10/bin/shutdown.sh /usr/bin/stop-tomcat
start-tomcat
