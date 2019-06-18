pipeline {
  
  agent any

  stages {
    stage('Building image') {
      steps{
        script {
            docker.build registry + ":$BUILD_NUMBER"

            checkout scm

            def customImage = docker.build("my-image:${env.BUILD_ID}")

        }
      }
    }
  }
}