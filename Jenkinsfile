pipeline{
    
    agent any 
    
    stages{
        
        stage('git checkout'){
            steps{
               git branch: 'main', url: 'https://github.com/Pritam2105-pc/terraform_modules.git'
            }
        }
        stage('terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        
         stage('terraform apply'){
            steps{
                 sh 'terraform apply --auto-approve'
            }
        }
        stage('terraform destroy'){
            steps{
              sh 'terraform destroy --auto-approve'
            }
        }
    }
}
