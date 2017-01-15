node {
   stage('Checkout') {
      git url: 'https://github.com/xebialabs/rest-o-rant-web.git'
   }
   stage('Build') {
      if (isUnix()) {
          sh "./gradlew clean build"
      } else {
         bat("gradlew.bat clean build")
      }
    }
    stage('Package') {
      xldCreatePackage artifactsPath: 'build/distributions', manifestPath: 'deployit-manifest.xml', darPath: '$JOB_NAME-$BUILD_NUMBER.0.dar'
    }
    stage('Publish') {
      xldPublishPackage serverCredentials: 'Admin', darPath: '$JOB_NAME-$BUILD_NUMBER.0.dar'
    }
    stage('Deploy') {
      xldDeploy serverCredentials: 'Admin', environmentId: 'Environments/Dev', packageId: 'Applications/rest-o-rant-web/$BUILD_NUMBER.0'
    }
}
