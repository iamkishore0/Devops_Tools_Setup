#!/bin/bash

# Update and install necessary packages
sudo yum install -y yum-utils

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker and related components
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Create a Docker Compose file for Jenkins
cat <<EOF > docker-compose.yml
version: "3.9"

services:
  jenkins:
    image: jenkins/jenkins:lts
    container_name: jenkins
    ports:
      - "8080:8080"
    volumes:
      - jenkins_home:/var/jenkins_home

volumes:
  jenkins_home:
EOF

# Run Docker Compose to start Jenkins in detached mode
sudo docker compose up -d

# Create a systemd service file for Docker Compose
sudo bash -c 'cat <<EOF > /etc/systemd/system/docker-compose-app.service
[Unit]
Description=Docker Compose Application Service
Requires=docker.service
After=docker.service

[Service]
WorkingDirectory=/path/to/your/docker-compose.yml/directory
ExecStart=/usr/local/bin/docker-compose up -d
ExecStop=/usr/local/bin/docker-compose down
Restart=always

[Install]
WantedBy=multi-user.target
EOF'

# Replace /path/to/your/docker-compose.yml/directory with the actual path where the docker-compose.yml is located
sudo sed -i 's#/path/to/your/docker-compose.yml/directory#'$(pwd)'#' /etc/systemd/system/docker-compose-app.service

# Reload systemd daemon to recognize the new service
sudo systemctl daemon-reload

# Enable the new Docker Compose service to start on boot
sudo systemctl enable docker-compose-app.service

# Start the Docker Compose service
sudo systemctl start docker-compose-app.service

# Update all installed packages to the latest version
sudo yum update -y

#Get jenkins intialAdminPassword
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
