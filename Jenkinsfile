pipeline {
    agent none
    stages {
        stage('Build') {
            agent { docker 'maven:3.6.0-jdk-8-alpine' }
            steps {
                echo 'Building..'
                sh './mvnw package'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
            }
        }
        stage('Test') {
            // TODO: figure out JaCoCo tests
            agent { docker 'openjdk:8-jre-slim' }
            steps {
                echo 'Testing..'
            }
        }
        stage('Package') {
            agent any
            steps {
                echo 'Packaging..'
                sh ''
                // TODO: add command to push docker image to artifactory
            }
        }
        stage('Deploy') {
            agent any
            steps {
                echo 'Deploying....'
                //sh 'kubectl apply -f k8s'
            }
        }
    }
}
