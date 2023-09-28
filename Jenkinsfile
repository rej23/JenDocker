pipeline{
    agent any
    stages{
        stage('Download Docker'){
            steps{
                sh "curl -fsSL https://get.docker.com -o get-docker.sh"
                sh 'sh get-docker.sh'
            }
        }
        
        stage("Reboot"){
            steps {
                sh "sudo reboot"
                }
            }
    
        stage("clean up"){
            steps {
                sh "docker system prune -af"
                }
            }


        stage("Build Docker Image"){
            steps {
                sh "docker build -t myimage ."
                }
            }   


        stage(""){
            steps {
                sh ""
                }
            }
        }
    }
