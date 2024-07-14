pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-jenkins-credentials')
        AWS_SECRET_ACCESS_KEY = credentials('aws-jenkins-credentials')
        TF_VAR_region         = 'us-west-2'
        TF_VAR_ami            = 'ami-0c55b159cbfafe1f0'
        TF_VAR_instance_type  = 't2.micro'
        TF_VAR_bucket_name    = 'example-bucket-123456'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo/terraform-config.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply tfplan'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}