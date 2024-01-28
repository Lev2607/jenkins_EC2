pipeline {
    agent {
        label 'EC2-agent'
    }

    stages {
        stage('Pull') {
            steps {
                checkout scm
            }
        }
        stage('Initialize') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        always {
            sh 'terraform destroy -auto-approve'
        }
        success {
            echo 'Der Terraform-Apply-Befehl wurde erfolgreich ausgeführt.'
        }
        failure {
            echo 'Es gab einen Fehler beim Ausführen des Terraform-Apply-Befehls.'
        }
    }
}
