pipeline{
    agent any
        stages {
            stage('Cleanup') {
                steps{
                    cleanWs()
                }
            }
            stage('git-clone') {
                steps {
                    sshagent(['ec2-instance-key-pair']) {
                        sh 'ssh -o StrictHostKeyChecking=no ${hostname} sudo rm -rf Docker-using-Jenkins'
                        sh 'ssh -o StrictHostKeyChecking=no ${hostname} sudo yum install git -y'
                        sh 'ssh -o StrictHostKeyChecking=no ${hostname} sudo git clone https://github.com/AnilKumar-Noolu/Docker-using-Jenkins.git'
                    } 
                }
            }
            stage('Verify the Clone') {
                steps{
                    sshagent(['ec2-instance-key-pair']) {
                        sh 'ssh -o StrictHostKeyChecking=no ${hostname} pwd'
                        sh 'ssh -o StrictHostKeyChecking=no ${hostname} ls'
                        sh 'ssh -o StrictHostKeyChecking=no ${hostname} cat Docker-using-Jenkins/Dockerfile'
                    }
                }
            }
            stage('Building the Docker Image') {
                steps{
                    sshagent(['ec2-instance-key-pair']) {
                        sh 'ssh -o StrictHostKeyChecking=no ${hostname} sudo docker build -t nginx-app /home/ec2-user/Docker-using-Jenkins/'
                        
                    }
                }
            }
            stage('Verifying the Docker Image') {
                steps{
                    sshagent(['ec2-instance-key-pair']) {
                        sh 'ssh -o StrictHostKeyChecking=no ${hostname} sudo docker images'
                        
                    }
                }
            }
        
        }
}
