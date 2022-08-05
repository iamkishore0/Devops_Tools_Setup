FROM tomcat:8.5.75
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

RUN rm -rf /usr/local/tomcat/conf/tomcat-users.xml
RUN rm -rf /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY ./tomcat-users.xml /usr/local/tomcat/conf
COPY ./context.xml /usr/local/tomcat/webapps/manager/META-INF
RUN chmod 777 /usr/local/tomcat/bin/startup.sh
RUN chmod 777 /usr/local/tomcat/bin/shutdown.sh
RUN chmod 777 /usr/local/tomcat/bin/catalina.sh
EXPOSE 8080
