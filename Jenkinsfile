pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Shreyash321995/website_shreyash.git'
            }
        }

        stage('Test') {
            steps {
                echo 'Jenkins Pipeline Working 🚀'
            }
        }
    }
}
