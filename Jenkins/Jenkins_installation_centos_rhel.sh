sudo yum install wget -y && sudo yum install unzip -y && sudo yum install git -y && sudo yum install maven -y &&
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate &&
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key &&
sudo yum install -y epel-release java-11-openjdk-devel &&
sudo yum install jenkins -y &&
sudo systemctl daemon-reload &&
sudo systemctl start jenkins &&
sudo systemctl enable jenkins &&
service jenkins status
