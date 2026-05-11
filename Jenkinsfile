pipeline {
    agent any
    environment {
        GHCR_CRED = credentials('ghcr-login-secret')
    }
    stages {
        # Stage pertama untuk mengecheck/lint docker file
        stage('lint-dockerfile') {
            steps {
                sh 'hadolint Dockerfile'
            }
        }
        # Stage kedua untuk build frontend app 
        stage('build-app-karsajobs-ui') {
            steps {
                sh "echo \$GHCR_CRED_PSW | docker login ghcr.io -u \$GHCR_CRED_USR --password-stdin"
                sh "docker build -t ghcr.io/xmod3905/karsajobs-ui:latest ."
                sh "docker push ghcr.io/xmod3905/karsajobs-ui:latest"
            }
        }
    }
}