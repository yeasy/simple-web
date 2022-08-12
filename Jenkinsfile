pipeline {
        agent any
    environment {
        DOCKER_USER     = credentials('docker-username')
        DOCKER_PASSWORD = credentials('docker-password') 
    }
        
    stages {
        stage('Pull-Source-Code'){
            steps{ 
                git branch: 'Paul',
                credentialsId: 'git-credentials',
                url: 'https://github.com/alaike/simple-web.git'
            }
        }

        stage('Login to Docker HUB') {
            steps {
                echo '===Login to docker hub ==='
                sh 'docker login --username $DOCKER_USER --password $DOCKER_PASSWORD'
            }
        }

        stage('Building Docker Image') { 
            steps {
                echo '=== Creating Docker image==='
                sh 'docker build -t test-image:1.0 .'
            }
        }

        stage('TAG Docker Image') {
            steps {
                echo '=== Tagging yeasy Docker Image ==='
                sh 'docker tag test-image:1.0 $DOCKER_USER/test-image:1.0'
            }
        }
        stage('Push Docker Image to docker hub') {
            steps {
                echo '=== Pushing yeasy Docker Image ==='
                sh 'docker push $DOCKER_USER/test-image:1.0'
            }
        }
        
        stage ('Deploy to k8s') {
	      steps{
	        	sshagent(['k8s-key']) {
		         sh 'ssh -o StrictHostKeyChecking=no ubuntu@3.8.136.123 "docker login --username $DOCKER_USER --password $DOCKER_PASSWORD && kubectl apply -f petclinic.yaml"'
		        }
	        }
    	}
    }
}
