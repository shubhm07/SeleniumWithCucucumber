pipeline{
    agent any
    stages{
        stage("Maven Version"){
            steps{
                bat 'mvn -v'
            }
        }
        stage("Build Maven Project"){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/shubhm07/SeleniumWithCucucumber']]])
                sh 'mvn clean install'
            }
        }
        stage("Create Report"){
            steps{
                cucumber buildStatus: 'null', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
            }
        }
        stage("Build docker Image"){
            steps{
                sh 'docker built -t shubhm07/SeleniumWithCucucumber .'
            }
        }
    }
}
