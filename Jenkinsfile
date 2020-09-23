pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git credentialsId: 'webhook-2', url: 'https://gitlab.com/thangnv2009/webhook-2.git'
            }
        }
        stage('build') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh label: '', script: 'docker build -t thangnv/golang-test:v1 .'
                    sh label: '', script: 'docker push thangnv/golang-test:v1'
                }
            }
        }
    }
}
