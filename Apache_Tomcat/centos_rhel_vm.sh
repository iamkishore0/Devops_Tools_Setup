#!/bin/bash

yum install wget unzip java -y 
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.98/bin/apache-tomcat-8.5.98.zip
unzip apache-tomcat-8.5.98.zip
rm apache-tomcat-8.5.98/conf/tomcat-users.xml
rm apache-tomcat-8.5.98/webapps/manager/META-INF/context.xml
cp tomcat-users.xml apache-tomcat-8.5.98/conf/
cp context.xml apache-tomcat-8.5.98/webapps/manager/META-INF/
chmod 777 apache-tomcat-8.5.98/bin/startup.sh apache-tomcat-8.5.98/bin/shutdown.sh apache-tomcat-8.5.98/bin/catalina.sh
./apache-tomcat-8.5.98/bin/startup.sh
echo "cd /root/Devops_Tools_Setup/Apache_Tomcat/apache-tomcat-8.5.98/bin && ./startup.sh" >> /root/.bashrc
