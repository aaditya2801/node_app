# Simple Web App: To Do Task List
## Build a Docker image and Pushing it to Docker Hub 

### 1) For Building a Docker File:

#### $ sudo docker build -t [IMAGE NAME]:[IMAGE VERSION] .
##### // Here . specifies current directory.

### 2) For logging into your Docker Hub:

#### $ sudo docker login
##### // Here you have to provide your docker hub username and password.

### 3) Tag Docker Image:

#### $ sudo docker tag [IMAGE NAME]:[IMAGE VERSION]  [DOCKER HUB USERNAME]/[IMAGE NAME]:[VERSION]
##### // Here [IMAGE NAME]:[IMAGE VERSION] ---> Source Image & [DOCKER HUB USERNAME]/[IMAGE NAME]:[VERSION] ----> Target Image

### 4) Push Docker Image to Docker Hub:

##### $ sudo docker push [DOCKER HUB USERNAME]/[IMAGE NAME]:[VERSION]
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
