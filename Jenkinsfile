pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                echo 'Clone from github repository'
                git branch: 'master', changelog: false, poll: false, url: 'https://github.com/gayat19/CDSampleRepo.git'
            }
        }
        stage('Provision Infra with Ansible') {
            steps {
                echo 'Provisioning ansible node and controller nodes'
                bat 'vagrant up'
            }
        }
        
        stage('Spin upp ansible and execute playbook'){
            steps{
                bat '''
            vagrant up
            vagrant ssh acs2
            git branch: 'master', changelog: false, poll: false, url: 'https://github.com/gayat19/CDSampleRepo.git'
            ansiblePlaybook installation: 'ansible', playbook: './installdocker.yaml'
            '''
            }
        }
    }
}
