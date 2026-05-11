pipeline {
    agent any
    environment {
        GHCR_CRED = credentials('ghcr-login-secret') 
    }
    stages {
        // Stage ini mengecheck/meng-lint dockerfile 
        stage('lint-dockerfile') {
            steps {
                sh 'hadolint Dockerfile'
            }
        }
        // Stage ini menguji aplikasi
        stage('test-app') {
            steps {
                sh 'go test -v -short --count=1 $(go list ./...)'
            }
        }
        // Stage ini membuat image (build) dan mengepushnya ke github registry
        stage('build-app-karsajobs') {
            steps {
                sh "echo \$GHCR_CRED_PSW | docker login ghcr.io -u \$GHCR_CRED_USR --password-stdin"
                sh "docker build -t ghcr.io/xmod3905/karsajobs:latest ."
                sh "docker push ghcr.io/xmod3905/karsajobs:latest"
            }
        }
    }
}