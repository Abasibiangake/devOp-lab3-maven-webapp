pipeline {
  agent any
  
  stages {
    stage('Check out') {
      steps {
        checkout scm
      }
    }
    
    stage('Build Maven Project') {
      steps {
        sh 'mvn clean package'
      }
    }
    
    stage('Docker Build') {
      steps {
        script {
          docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials-devOplab3') {
            def image = docker.build("exercise1-docker-image")
            image.push()
          }
        }
      }
    }
    
    stage('Docker Login') {
      steps {
        script {
          docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials-devOplab3') {
            // just logging in is enough
          }
        }
      }
    }
    
    stage('Docker Push') {
      steps {
        script {
          docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials-devOplab3') {
            def image = docker.image("exercise1-docker-image")
            image.push()
          }
        }
      }
    }
  }
  
  post {
    always {
      sh 'docker image rm -f exercise1-docker-image'
    }
  }
}


//docker-hub-credentials-devOplab3