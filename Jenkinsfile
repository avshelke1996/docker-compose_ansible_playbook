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
                sh 'chmod 777 playbook.yaml || true'
                sh 'sudo docker compose down --rmi all --volumes || true'
				sh 'chmod 777 clone.sh || true'
            }
        }
        stage('build'){
            steps{
				sh 'pwd'
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
