pipeline {

    agent any
    environment {
        IMAGE_NAME= 'rajeevmagar/calculator'    // username/repo of dockerhub
        IMAGE_TAG= "${BUILD_NUMBER}"
        DOCKERFILE_PATH= 'Dockerfile'   // path to dockerfile
        DOCKERHUB_CREDENTIALS= 'docker-hub-credentials' // Credentials for Dockerhub stored in Jenkins
    }

    stages {

        stage('Build Image') {
            steps{
              script {
                // Building Image
                dockerImage = docker.build("${IMAGE_NAME}:${IMAGE_TAG}", "--file ${DOCKERFILE_PATH}")                
              }
            }
        }

        stage('Push to Dockerhub') {
            steps {
                script {
                // Pushing to Dockerhub
                docker.withRegistry('', "${DOCKERHUB_CREDENTIALS}") {
                dockerImage.push()
                }
            }
        }

        stage('Cleaning up Local Image') {
            steps {
                script {
                // Removing Image
                sh "docker rmi ${IMAGE_NAME}:${IMAGE_TAG}"
                }
            }
        }
    }
}