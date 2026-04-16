pipeline {
    agent any

    environment {
        IMAGE_NAME = "devops-app"
        DOCKER_HUB = "your-dockerhub-username"
    }

    stages {

        stage('Clone Code') {
            steps {
               git 'https://github.com/Shreyash321995/website_shreyash.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_HUB/$IMAGE_NAME .'
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $DOCKER_HUB --password-stdin'
                    sh 'docker push $DOCKER_HUB/$IMAGE_NAME'
                }
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'docker run -d -p 3000:3000 $DOCKER_HUB/$IMAGE_NAME'
            }
        }
    }
}
