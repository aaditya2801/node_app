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
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Deploy the App in Kubernetes

* Pre Req: Single Node Minikube Cluster or Multi Node K8S Cluster or EKS, GKE, AKS, Linode K8s.
* [Source for Minikube](https://youtu.be/TAM-DLPX9XA)
* [Source for EKS](https://youtu.be/p6xDCz00TxU)

### 1) Create Deployment

#### $ kubectl create deployment [DEPLOYMENT NAME] --image=[DOCKER HUB USERNAME]/[IMAGE NAME]:[VERSION]

### 2) Expose Deployment

#### $ kubectl expose deploy [DEPLOYMENT NAME] --port=8080 --type=NodePort

### 3) For Accessing App

#### Hit to: IP:PORT 

~ Note: 
* Suppose you are using minikube cluster, so for getting ip of it run "minikube ip" command.
* For getting node port on which our app is exposed run "kubectl get svc".
* If you want to replicate your app run: kubectl scale deploy [DEPLOYMENT NAME] --replicas=[REPLICA COUNT]
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
