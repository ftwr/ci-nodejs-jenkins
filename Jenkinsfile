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
                //input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
