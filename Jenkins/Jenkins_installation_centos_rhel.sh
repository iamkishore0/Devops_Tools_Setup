#!/bin/bash

sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install fontconfig java-11-openjdk -y
yum install jenkins -y
service jenkins start
systemctl enable jenkins
service jenkins status
