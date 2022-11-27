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
                bat 'mvn -Dplugin=install help:describe'
            }
        }
        stage("Create Report"){
            steps{
                cucumber buildStatus: 'null', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
            }
        }
        stage("Build docker Image"){
            steps{
                bat 'docker built -t shubhm07/SeleniumWithCucucumber .'
            }
        }
    }
}
