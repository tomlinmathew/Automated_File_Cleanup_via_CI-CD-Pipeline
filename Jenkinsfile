pipeline {
    agent any
    stages {
        stage('Get Hostname via PowerShell') {
            steps {
                bat 'powershell -Command "$env:COMPUTERNAME"'
            }
        }
    }
}