pipeline {
    agent any

    tools {nodejs "node"}

    stages {
        stage('Dump nodejs configuration') {
            steps {
                sh 'npm config ls'
            }
        }
        stage('Cloning Git') {
            steps {
                git 'https://github.com/ricardoribas/docker-sample'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Execute Tests') {
            steps {
                sh 'npm test'
            }
        }
    }
}
