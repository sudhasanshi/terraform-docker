pipeline {
    agent { 
	   docker { image 'terraform:1.0'}
          }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = "ap-south-1"
    }
stages {
    stage('git-checkout') {
        steps{
            git branch: 'main', url: 'https://github.com/sudhasanshi/jenkins-terraform.git'
        }
    }
    stage('terraform-init') {
        steps{
            sh 'terraform init'
        }
    }
     stage('terraform-apply') {
        steps{
            sh 'terraform apply --auto-approve'
        }
    }
}
}
