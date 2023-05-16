exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
sudo su --
hostname tomcat-server
amazon-linux-extras install -y java-openjdk11
cd /opt/
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.7/bin/apache-tomcat-10.1.7.tar.gz
tar -xvzf apache-tomcat-10.1.7.tar.gz 
mv apache-tomcat-10.1.7 tomcat
cd /opt/tomcat/bin/
./startup.sh