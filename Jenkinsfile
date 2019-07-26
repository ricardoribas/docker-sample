pipeline {
  agent any
  stages {
    stage('Clone Repository') {
      steps {
        git(url: 'https://github.com/ricardoribas/docker-sample', branch: 'master')
      }
    }
  }
}