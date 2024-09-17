
# Use an official OpenJDK image as the base image
FROM openjdk:8-jdk-alpine

# Install necessary tools
RUN apk update && apk add --no-cache curl unzip

# Set the working directory
WORKDIR /usr/local

# Download and extract Apache Tomcat 9.0.93
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.zip \
    && unzip apache-tomcat-9.0.93.zip -d /usr/local/ \
    && mv /usr/local/apache-tomcat-9.0.93 /usr/local/tomcat \
    && rm apache-tomcat-9.0.93.zip

# Remove existing tomcat-users.xml and context.xml
RUN rm /usr/local/tomcat/conf/tomcat-users.xml \
    && rm /usr/local/tomcat/webapps/manager/META-INF/context.xml

# Copy the custom tomcat-users.xml and context.xml into the correct Tomcat directories
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

# Grant execute permissions to the catalina.sh script
RUN chmod +x /usr/local/tomcat/bin/catalina.sh

# Set the working directory to Tomcat
WORKDIR /usr/local/tomcat

# Expose the default Tomcat port
EXPOSE 8080

# Run Tomcat when the container launches
CMD ["bin/catalina.sh", "run"]
