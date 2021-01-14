# Docker Pipeline Task
- Micro-service with Docker, CI/CD with Jenkins and deployment to AWS

**Summary**

- Create a CI/CD pipline for your containers. Your final objective is to get jenkins to build the images and push to Docker hub, then to deploy onto AWS.

## Task:
- Use Jenkins to clone the app and run the tests

- Once all the tests passed, Jenkins should trigger build to build docker image and push it your docker hub repo

- Create a web-hook on your docker hub repo to send a notification email of success

## Next
- Jenkins to trigger cd multi-stage docker build to deploy the containerised app on AWS

- We have done this with VMs and now it's time to see the real life difference between micro-services-containerisation VS VMs

**Acceptance Criteria**:
Jenkins to trigger docker build to containerise our node-app and push to docker hub repo
App and db deployed to AWS running in docker containers