pipeline {
	environment {
		registry = "rribasogun/docker-jenkins-sample"
		registryCredential = 'dockerhub'
		dockerImage=''
	}

	agent any

	tools {nodejs "node" }

	stages {
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
		stage('Building image') {
			steps{
				script {
					docker.build registry + ":$BUILD_NUMBER"
				}
			}
		}
		stage('Deploy Image') {
			steps {
				script {
					docker.withRegistry( '', registryCredential ) {
						dockerImage.push()
					}
				}
			}
		}
		stage('Remove Unused Docker Image') {
			steps{
				sh "docker rmi $registry:$BUILD_NUMBER"
			}
		}
	}
}