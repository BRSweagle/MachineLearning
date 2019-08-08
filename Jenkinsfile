pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            echo 'Build Start'
            sh '''#! /bin/sh
git pull'''
          }
        }
        stage('Upload Config') {
          steps {
            SWEAGLEUpload(actionName: 'uploadConfig', fileLocation: '/Users/boondock/Documents/GitHub/MachineLearning/ServerDefs.json', format: 'json', nodePath: 'WebApp,Environments', allowDelete: true, markFailed: true, tag: 'V${BUILD_ID}', description: 'DataUpload', showResults: true, onlyParent: true, withSnapshot: true)
          }
        }
      }
    }
    stage('RunML') {
      steps {
        sh '''#! /bin/sh
curl \'https://devtest2.sweagle.com/api/v1/data/ml/recognize?downLimit=100\' --data "path=Webapp" --header "authorization: bearer 47651f6b-50f4-4e55-8734-aea2b11e1032"
'''
      }
    }
  }
}