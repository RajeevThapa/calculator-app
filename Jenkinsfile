pipeline {

    agent any 
    
    environment {
        DOCKERFILE_PATH = 'Dockerfile' //Dockerfile path
        IMAGE_NAME = 'rajeevmagar/calculator' // Dockerhub username and repo
        IMAGE_TAG = "${BUILD_NUMBER}"
        DOCKERHUB_CREDENTIALS = 'docker-hub-credentials' // Credentials in Jenkins to connect into dockerhub
    }

    stages {

        stage('checkout') {
            steps {
                git branch: 'main',
                credentialsId: 'dbf2a5be-744c-48d2-9cca-63abc3a7f49f',
                url:'https://github.com/RajeevThapa/calculator-app'
            }
        }

        stage('Build Docker') {
            steps {
                script {
                    dockerImage = docker.build("${IMAGE_NAME}:${IMAGE_TAG}", "--file ${DOCKERFILE_PATH} .")
                }
            }
        }

        stage('Push to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', "${DOCKERHUB_CREDENTIALS}") {
                        dockerImage.push("${IMAGE_TAG}")
                    }
                }
            }
        } 
    }
}