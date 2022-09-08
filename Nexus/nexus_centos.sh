yum install wget -y && yum install unzip -y && yum install java -y &&

wget https://download.sonatype.com/nexus/oss/nexus-2.14.4-03-bundle.zip &&

unzip nexus-2.14.4-03-bundle.zip &&

rm nexus-2.14.4-03/bin/nexus &&

cp nexus nexus-2.14.4-03/bin/ &&

chmod +x nexus-2.14.4-03/bin/nexus

bash nexus-2.14.4-03/bin/nexus restart
