pipeline {
    agent any
    tools {
        maven 'Maven_3.8.7'
        }
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/rk4027-N/Jenkins.git'
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
                sh 'docker run -d -p 8000:8000 my-app'
            }
        }
    }
}

