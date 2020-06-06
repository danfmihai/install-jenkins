#!/bin/bash
sudo apt install -y apt-transport-https wget
wget https://pkg.jenkins.io/debian-stable/jenkins.io.key
sudo apt-key add jenkins.io.key

echo "deb https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list

sudo apt-get update
sudo apt install -y openjdk-8-jdk
sudo apt-get install -y jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword