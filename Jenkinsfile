pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Prepare') {
      steps {
        sh 'ls -la'
        sh 'ceedling version'
      }
    }
    stage ('Build') {
      steps {
        echo 'Building project'
      }
    }
    stage ('Unit tests') {
      steps {
        echo 'Running unit tests...'
        sh 'ceedling test:all'
      }
    }
    stage ('Deploy') {
      steps {
        echo 'Deploying application'
      }
    }
  }
}
