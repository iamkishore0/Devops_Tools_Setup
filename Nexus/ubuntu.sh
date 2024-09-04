apt-get install wget -y && apt-get install unzip -y  &&

wget https://download.sonatype.com/nexus/oss/nexus-2.14.4-03-bundle.zip &&

unzip nexus-2.14.4-03-bundle.zip &&

rm nexus-2.14.4-03/bin/nexus &&

cp nexus nexus-2.14.4-03/bin/ &&

chmod +x nexus-2.14.4-03/bin/nexus &&

bash nexus-2.14.4-03/bin/nexus restart &&

echo "cd /root/Devops_Tools_Setup/Nexus/nexus-2.14.4-03/bin && bash nexus start" >> /root/.bashrc
