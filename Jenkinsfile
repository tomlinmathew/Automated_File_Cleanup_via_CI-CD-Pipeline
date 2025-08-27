pipeline {
    agent any
    stages {
        stage('Cleanup') {
            steps {
                bat 'powershell.exe -ExecutionPolicy Bypass -File cleanup-script.ps1 -TargetDir "C:\\Temp" -DaysOld 7 -FileType "*.txt"'
            }
        }
    }
}
