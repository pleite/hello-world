pipeline {
  
  agent any

  stages {
    stage('Building image') {
      steps{
        script {

            checkout scm

            def customImage = docker.build("my-image:${env.BUILD_ID}")

        }
      }
    }
  }
}