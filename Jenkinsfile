pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn -U clean install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
