System requirements 
  Memory: 4GB for normal projects & 8GB for sonarqube projects
  VCPU: 2 (Recomended 4)
  Volume: 40GB 
  
Install Jenkins in RHEL/Centos 
  Give execution permissions to Jenkins_installation_centos_rhel.sh file "chmod +x Jenkins_installation_centos_rhel.sh"
  Execute script file "./Jenkins_installation_centos_rhel.sh"
  Access jenkins server at "localhost:8080 or <publicip>:8080"
 
Install Jenkins in Debian/Ubuntu
  Give execution permissions to Jenkins_installation_debian_ubuntu.sh file "chmod +x Jenkins_installation_debian_ubuntu.sh"
  Execute script file "./Jenkins_installation_debian_ubuntu.sh"
  Access jenkins server at "localhost:8080 or <publicip>:8080"
  
Run Jenkins in Docker container
  Pre-requisites: Docker & Docker-compose
  Install Docker & Docker-compose using this link in Centos/RHEL/Debain/Ubuntu
  
  For Centos/RHEL linux execute "sudo docker compose.yml up -d" to run jenkins in docker container
  For Debain/Ubuntu linux execute "sudo docker-compose.yml up -d" to run jenkins in docker container
  Access jenkins server at 8090 port "localhost:8090 or <publicip>:8090"
  
