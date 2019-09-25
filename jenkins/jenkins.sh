# Installing jenkins through Shellscript

#!/bin/bash
# Updating ubuntu packages
sudo apt update
# Installing Java
sudo apt install openjdk-8-jdk -y
# Setting Javapath
sudo echo "JAVA_HOME=\"/usr/lib/jvm/java-8-openjdk-amd64\"" >> /etc/environment
# Installing Git
sudo apt install git -y
# Installing Maven
sudo apt install maven -y

# First, add the repository key to the system:

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# When the key is added, the system will return OK. Next, append the Debian package repository address to the server's sources.list:

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
# When both of these are in place, run update so that apt will use the new repository:

sudo apt update
# Finally, install Jenkins and its dependencies:

sudo apt install jenkins -y

#Starting Jenkins
sudo systemctl start jenkins
#Setting Up Jenkins
#To set up your installation, visit Jenkins on its default port, 8080, using your server domain name or IP address: http://your_server_ip_or_domain:8080

#You should see the Unlock Jenkins screen, which displays the location of the initial password:

sudo cat /var/lib/jenkins/secrets/initialAdminPassword