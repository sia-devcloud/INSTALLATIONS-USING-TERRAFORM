#!/bin/bash
sudo apt install openjdk-17-jdk -y
sudo wget "https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz"
tar -xvf "apache-maven-3.9.9-bin.tar.gz"
sudo mkdir /shahin
sudo mv apache-maven-3.9.9 /shahin
echo 'export M2_HOME="/shahin/apache-maven-3.9.9"' >> /etc/profile
echo 'export PATH=$M2_HOME/bin:$PATH' >> /etc/profile
echo 'export PATH' >> /etc/profile
source /etc/profile