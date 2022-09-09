#!/bin/bash

yum install wget unzip java -y 
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.82/bin/apache-tomcat-8.5.82.zip
unzip apache-tomcat-8.5.82.zip
rm apache-tomcat-8.5.82/conf/tomcat-users.xml
rm apache-tomcat-8.5.82/webapps/manager/META-INF/context.xml
cp tomcat-users.xml apache-tomcat-8.5.82/conf/
cp context.xml apache-tomcat-8.5.82/webapps/manager/META-INF/
chmod 777 apache-tomcat-8.5.82/bin/startup.sh apache-tomcat-8.5.82/bin/shutdown.sh apache-tomcat-8.5.82/bin/catalina.sh
./startup.sh
