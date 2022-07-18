pipeline{
    agent any
    tools {
        terraform 'Terraform'
    }
    stages{
        /*stage('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'git-hub_credentials', url: 'https://github.com/kasi423/iac-instance.git'
            }
        }*/
       /*stage('Terraform Init'){
            steps{
               sh 'terraform init'
            }
        }*/
        /*stage('Terraform plan'){
            steps{
               sh 'terraform plan'
            }
        }*/
        /*stage('Terraform Apply'){
            steps{
               sh 'terraform apply --auto-approve'
            }
        }*/
          stage('Terraform Destory')
            steps{
               sh 'terraform plan -destroy'
         }
        }
    }
