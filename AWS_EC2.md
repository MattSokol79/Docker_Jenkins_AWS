## Pre-requisites
1. 2 EC2 instances
   - Jenkins Master Instance -> Jenkins Server
   - Production Instance -> Hosts Docker containers deployed onto browser

# Setting up the Jenkins Master EC2 Instance
- Security Group
  - Inbound
    - 8080
    - 80
    - 443
    - 3000
    - 22 -> Your ip

### Setup Jenkins on the Jenkins Master instance 
  - SSH in -> `ssh -i <AWS_KEY> ubuntu@<PUBLIC_IP>`
  - Install jenkins:
    - As the AWS instance uses Ubuntu, follow the instructions for [Jenkins](https://www.jenkins.io/doc/book/installing/linux/) installation provided by their official website.
```shell
# Update and install Java
sudo apt update -y
sudo apt install openjdk-11-jdk
```
  - Add jenkins repo and install jenkins
```shell
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > \
    /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update

sudo apt-get install jenkins

sudo systemctl status jenkins
```
- **Ensure to also install docker-compose and npm**

- Once jenkins has been successfully installed on your instance, you can navigate to the `Public IP` of your instance on port 8080 to see jenkins working. 
  - Follow the instructions to activate your version of jenkins and install suggested plugins + Docker plugins

- Ensure to provide jenkins with:
  - SSH key to connect to Github
  - Docker credentials to DockerHub
  - AWS key to connect to AWS

### Setup Docker on the Jenkins Master Instance
- As the AWS instance uses Ubuntu, follow the instructions for [Docker](https://docs.docker.com/engine/install/ubuntu/) installation provided by their official website.
```shell 
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

# Check Docker is installed correctly
docker --version
```

# Setting up the Production EC2 Instance
- This instance should only have Docker installed, follow the instructions for the installation as described [earlier](#setup-docker-on-the-jenkins-master-instance)
- Copy over your `docker-compose.yaml` and `mongod.conf` files into the instance as these should not change
  - Alternatively, you can do this step within the CD-2 Jenkins shell