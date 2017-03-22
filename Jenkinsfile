pipeline {
    agent any
    stages {
        stage('check') {
            steps {
                sh './gradlew check'
            }
        }
        stage('archive') {
            steps {
                junit 'build/test-results/*.xml'
            }
        }
    }
}
