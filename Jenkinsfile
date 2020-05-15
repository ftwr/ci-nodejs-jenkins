pipeline {
    agent any
    tools {nodejs "NodeJS 14.2.0"}
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
                sh 'chmod +x deploy-prod.sh'
                sh './deploy-prod.sh'
            }
        }
    }
}
