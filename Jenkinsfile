pipeline{
    agent{
        label{
            label 'built-in'
        }
    }
    stages{
        stage('clean'){
            steps{
                echo "clean"
				sh 'whoami'
                sh 'chmod 777 playbook.yaml'
                sh 'sudo docker compose down --rmi all --volumes || true'
				sh 'chmod 777 clone.sh'
				sh 'sudo ./clone.sh'
            }
        }
        stage('build'){
            steps{
                sh 'playbook.yaml'
            }
        }
        stage('test'){
            steps{
                echo "test"
            } 
        }
        stage('deploy'){
            steps{
                echo "deploy"
            }
        }
    }
}
