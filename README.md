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

set up docker on every instance

# S3 Bucket - Simple Storage Service
- Essentially a blank hard drive
- Used as disaster recovery plans
- Unlimited storage
- Can create a bucket with only `Read` permissions

Creating a bucket
- Bucket name -> eng74mattbucket
- Create

Permissions ->


gmail webhook -> ahskhan@spartaglobal.com