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
                archiveArtifacts artifacts: 'build/**/*.war', fingerprint: true, onlyIfSuccessful: true
            }
        }
    }
}
