pipeline {
    agent any
    stages {
        stage('check') {
            steps {
                sh './gradlew clean check'
            }
        }
        stage('archive') {
            steps {
                junit 'build/test-results/*.xml'
            }
        }
        stage('deploy') {
            steps {
                echo 'whatever'
            }
        }
    }
}
