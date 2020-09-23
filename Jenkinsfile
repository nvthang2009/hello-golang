pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git credentialsId: 'webhook-2', url: 'https://github.com/nvthang2009/golang.git'
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
