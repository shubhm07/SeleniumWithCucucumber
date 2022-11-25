pipeline{
    agent any()
    stages{
        stage("Maven Version"){
            bat 'mvn -v'
        }
        stage("Build Maven Project"){
            bat 'mvn -Dplugin=install help:describe'
        }
        stage("Create Report"){
            cucumber buildStatus: 'null', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }
    }
}
