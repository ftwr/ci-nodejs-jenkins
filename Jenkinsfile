pipeline {
    agent any
    tools {nodejs "NodeJS 14.2.0"}
    //environment {
    //    CI = 'false' 
    //}
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm audit fix --force'
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
