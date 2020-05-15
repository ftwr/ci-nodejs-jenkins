pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './test/test.sh'
            }
        }
        stage('Deploy') { 
            steps {
                sh './deploy-prod.sh'
            }
        }
    }
}
