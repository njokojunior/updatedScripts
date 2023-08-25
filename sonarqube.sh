#!/bin/bash
# SONARQUBE.SH

#change hostname
sudo hostnamectl set-hostname TOMCAT
cd /opt

#install git and wget nano vim tree unzip
#sudo yum install git wget nano vim tree unzip -y

#installing java11 (openjdk)
#sudo yum install java-11-openjdk-devel -y

#downloadding tomcat
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.1.0.73491.zip

#extract and rename at the same time
sudo unzip sonarqube-10.1.0.73491.zip

#renaming directory
sudo mv sonarqube-10.1.0.73491 sonarqube

#Assign executable permission to the tomcat home directory and all its sub directories
sudo chmod 777 -R /opt/sonarqube
sudo chown ec2-user -R /opt/sonarqube


echo "End of Sonarqube installation"

#Run the below commands to start and stop sonarqube

sudo ln -s /opt/sonarqube/bin/linux-x86-64/sonar.sh /bin/sonar
#sh /opt/sonarqube/bin/linux-x86-64/sonar.sh status
