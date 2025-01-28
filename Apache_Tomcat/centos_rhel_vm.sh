#!/bin/bash

yum install wget unzip java -y 
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.98/bin/apache-tomcat-9.0.98.zip
unzip apache-tomcat-9.0.98.zip
rm apache-tomcat-9.0.98/conf/tomcat-users.xml
rm apache-tomcat-9.0.98/webapps/manager/META-INF/context.xml
cp tomcat-users.xml apache-tomcat-9.0.98/conf/
cp context.xml apache-tomcat-9.0.98/webapps/manager/META-INF/
chmod 777 apache-tomcat-9.0.98/bin/startup.sh apache-tomcat-9.0.98/bin/shutdown.sh apache-tomcat-9.0.98/bin/catalina.sh
./apache-tomcat-9.0.98/bin/startup.sh
echo "cd /root/Devops_Tools_Setup/Apache_Tomcat/apache-tomcat-9.0.93/bin && ./startup.sh" >> /root/.bashrc
