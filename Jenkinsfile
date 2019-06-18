pipeline {
  
  agent any

  stages {
    stage('Building image') {
      steps{
        script {
            def customImage = docker.build("my-image:${env.BUILD_ID}")
        }
      }
    }
  }
}