# Instructions of how to setup a CICD
## Pre-requisites
1. 3 EC2 instances
   - Jenkins Master Instance -> Jenkins Server
   - Jenkins Worker Instance
   - Production Instance -> Docker

## Creating Jenkins Master EC2 Instance
- Setup jenkins on the Jenkins Master instance 
  - SSH in
  - Install jenkins :
```
# Update and install Java
sudo apt update -y
sudo apt install openjdk-8-jdk
```
  - Add jenkins repo
```
# Add the Jenkins repo
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add
```

# Test 1
# Test 2