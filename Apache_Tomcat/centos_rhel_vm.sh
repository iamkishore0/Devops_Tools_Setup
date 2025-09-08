#!/bin/bash

sudo yum install wget unzip java -y 
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.109/bin/apache-tomcat-9.0.109.zip
sudo unzip apache-tomcat-9.0.109.zip
sudo rm apache-tomcat-9.0.109/conf/tomcat-users.xml
sudo rm apache-tomcat-9.0.109/webapps/manager/META-INF/context.xml
sudo cp tomcat-users.xml apache-tomcat-9.0.109/conf/
sudo cp context.xml apache-tomcat-9.0.109/webapps/manager/META-INF/
chmod 777 apache-tomcat-9.0.109/bin/startup.sh apache-tomcat-9.0.109/bin/shutdown.sh apache-tomcat-9.0.109/bin/catalina.sh
sudo ./apache-tomcat-9.0.109/bin/startup.sh
# echo "cd /root/Devops_Tools_Setup/Apache_Tomcat/apache-tomcat-9.0.108/bin && ./startup.sh" >> /root/.bashrc
