pipeline{
    agent any
    stages{
        stage('Download Docker'){
            steps{
                sh "curl -fsSL https://get.docker.com -o get-docker.sh"
                sh 'sh get-docker.sh'
            }
        }
    
        stage("clean up"){
            steps {
                sh "docker rm -f $(docker ps -aq) || true"
                }
            }


        stage("Build Docker Image"){
            steps {
                sh "sh deploy.sh ."
                }
            }   
            
        }
    }
