# Azure Kubernetes Project
# Docker
# CI/CD Azure DevOps Pipelines

Goal of this mid project is to deploy a real application in Azure Cloud using AKS.

We will deploy Quiz game, prepared as two separate modules:

First of them, backend module, was written in Java 11 and uses Spring Boot library. 
Project can be built (compiled from sources) using Maven tool (mvn) and Java Development Kit (JDK). 
By design, Java + Spring Boot applications can be packed to single .jar file that can be executed on any machine with Java Runtime Environment (JRE) installed.
Other one is frontend module, written using Angular Framework. It uses Typescript and all other regular Angular tools for building (npm). 
See repository README file for details.

Goals :

1.Prepare Dockerfile for backend module, so it can be used to build backend Docker image. 
Run a Docker container with this image locally and check if it works. 
By default, Spring Boot applications are running on port 8080. 
This quiz application contains dedicated health endpoint (/api/health) that returns simple JSON object – 
this will help you to see if your backend application is running correctly.

2.Prepare Dockerfile for frontend module, so it can be used to build frontend Docker image. 
Run a docker container with this image locally and check if it works. When building Angular project, 
make sure to use production settings. Check if at least homepage can be displayed from running docker container. 
See repository README file for details.

3.Make sure that frontend can communicate with backend and that quiz is working correctly on your local machine. 
Note that frontend application might require some adjustments, especially changing server name and/or port. 
Displaying JavaScript console logs in your browser might be helpful. If everything works correctly, 
you'll be able to see difficulties and categories on /select page.

4.Deploy both docker images to Azure Kubernetes Service (AKS). Create a new cluster for that and 
prepare all necessary Kubernetes configuration. Make sure to do as much as possible using text configuration files 
(e.g. kubectl apply -f backendK8sConfig.yml). You should follow kubernetes best practices. Please read about kubernetes architecture. 
You will have to explain what practices you used.

5.Make sure that frontend module can be accessible from the Internet, but backend module is NOT accessible from the internet. 
Only way to get to backend should be from frontend module. Preferred way to expose frontend is via Ingress. 
Make sure that you'll be able to proof that backend is inaccessible from the Internet.

6.Create a CI/CD pipeline with CI/CD tool of your choice for all of the above (Build code, Prepare docker images, Deploy to AKS).

7.Add monitoring to your Kubernetes cluster. Consider using Prometheus monitoring tool, but any other you’d like will do the work.

8.Add custom domain, so your frontend can be accessed from “normal” internet address (domain name), not only via IP address. 
Get credentials to manage lh1al.xyz domain and configure domain and Kubernetes to have your frontend accessible from address like quiz.mylastname.lh1al.xyz

9.Add TLS certificate to your site, so it can be used not only via HTTP, but also via HTTPS. In order to do that, you should have a look at 
Let’s Encrypt (free certificate issuer) and automated way to use it – cert-manager. Note that you need to complete previous point (custom domain) before doing this one.
