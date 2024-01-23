# Calculator App

A Simple Calculator app powered by "node.js." This application simplifies development with included "Dockerfile" and "Jenkinsfile" for automated builds. Elevating efficiency, it seamlessly deploys on Kubernetes manifests using ArgoCD. Ideal for developers seeking simplicity and tech enthusiasts exploring streamlined deployment practices.

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- Node.js
- npm (Node Package Manager)
- Docker
- kubectl
- minikube

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/RajeevThapa/calculator-app.git
   cd calculator-app

2. Install dependencies:
  
   ```bash
   npm init -y
   npm install express socket.io
   
3. Run the Node.js server:
   
   ```bash
   npm start
      or
   node server.js

Open your web browser and go to http://localhost:3000. The calculator application should be accessible.


## Using Docker

If you prefer to run the application using Docker, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/RajeevThapa/calculator-app.git
   cd calculator-app

2. Build the Docker image:
   
   ```bash
   docker build -t calculator-app .

3. Run the Docker container:
   
   ```bash
   docker run -p 3000:3000 calculator-app

Open your web browser and go to http://localhost:3000. The calculator application should be accessible.

## Using ArgoCD

1. Check ArgoCD Pods
   ```
   kubectl get pods -n argocd
   ```

2. Check ArgoCD Services
   ```
   kubectl get svc -n argocd
   ```

3. Expose ArgoCD Server using NodePort
   ```
   kubectl edit svc argocd-server -n argocd
   ```
   Replace type: ClusterIP with type: NodePort to expose ArgoCD to a URL.

4. List Minikube Services and Navigate to ArgoCD URL:
   ```
   minikube service list -n argocd
   ```
   Visit the URL associated with ArgoCD in your web browser.

5. Retrieve ArgoCD Secret
   ```
   kubectl get secret -n argocd
   ```

6. Copy ArgoCD Initial Admin Password
   ```
   kubectl edit secret argocd-initial-admin-secret -n argocd
   ```
   copy the password and exit

7. Decode and Use Credentials
   ```
   echo <copied_password> | base64 --decode
   ```
   Use the username admin and the decoded password to log in to the ArgoCD URL.


## Project Overview
![Draft](https://github.com/RajeevThapa/calculator-app/assets/101322664/ba30aedd-8b42-4341-9740-48e94d770775)


## Jenkins Pipeline
![Screenshot from 2024-01-23 22-30-35](https://github.com/RajeevThapa/calculator-app/assets/101322664/844eb249-16e4-4293-88db-6dd93ddd0dd8)

## ArgoCD
![Screenshot from 2024-01-23 22-31-15](https://github.com/RajeevThapa/calculator-app/assets/101322664/0401926a-f4da-4a75-b779-eb72557d32cc)




