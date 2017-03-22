stage('Build') {
  node() {
    //scm checkout
    sh './gradlew clean check'
    stash includes: './build/*', name: 'build'
  }
}

stage('Test') {
  node() {
    //scm checkout
    unstash name: 'build'
    junit 'build/test-results/*.xml'
  }
}

stage('Promote') {
  node() {
    //scm checkout
    unstash 'build'
    archiveArtifacts artifacts: 'build/***.war', fingerprint: true, onlyIfSuccessful: true
  }
}
                

/*
pipeline {
    agent none
    stages {
        stage('build') {
            agent any
            steps {
                sh './gradlew clean check'
                stash includes: './build/*', name: 'build'
            }
        }
        stage('test') {
            agent any
            steps {
                unstash 'build'
                junit 'build/test-results/*.xml'
            }
        }
        stage('promote') {
            agent any
            steps {
                unstash 'build'
                archiveArtifacts artifacts: 'build/***.war', fingerprint: true, onlyIfSuccessful: true
            }
        }
    }
}
*/
