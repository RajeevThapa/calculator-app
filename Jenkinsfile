pipeline {

    agent any
    environment {
        IMAGE_NAME= 'rajeevmagar/calculator'    // Username/Repo of dockerhub
        IMAGE_TAG= "v1.0.${BUILD_NUMBER}"   // Gives Build number
        DOCKERFILE_PATH= 'Dockerfile'   // Path to dockerfile
        DOCKERHUB_CREDENTIALS= 'docker-hub-credentials' // Credentials for Dockerhub stored in Jenkins
        K8S_MANIFEST_PATH = 'k8s/deploy.yml'    // Path to Kubernetes manifest
    }

    stages {

        stage('Build Image') {
            steps{
              script {
                // Building Image
                dockerImage = docker.build("${IMAGE_NAME}:${IMAGE_TAG}", "--file ${DOCKERFILE_PATH} .")                
              }
            }
        }

        stage('Push to Dockerhub') {
            steps {
                script {
                    // Pushing Image
                    docker.withRegistry('', "${DOCKERHUB_CREDENTIALS}") {
                        dockerImage.push()
                    }
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

        stage('Update k8s Manifest') {
            steps {
                script {
                    sh """
                        cat ${K8S_MANIFEST_PATH}
                        sed -i 's|image: ${IMAGE_NAME}:.*\$|image: ${IMAGE_NAME}:${IMAGE_TAG}|' ${K8S_MANIFEST_PATH}
                        cat ${K8S_MANIFEST_PATH}
                    """

                    sshagent(credentials:['4b2106fc-c96a-489d-b8a7-9dc887caf143']) {
                        sh """
                            git add ${K8S_MANIFEST_PATH}
                            git commit -m 'Update image in kubernetes manifest | Jenkins Pipeline'
                            git push git@github.com:RajeevThapa/calculator-app.git HEAD:main
                        """
                    }
                }
            }
        }
    }
}