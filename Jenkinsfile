pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git ' https://github.com/rk4027-N/Jenkins.git'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-app .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:8080 my-app'
            }
        }
    }
}

