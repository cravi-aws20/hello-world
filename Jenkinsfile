pipeline {
    environment {
        imagename = "craviaws20/pipeline"
        registryCredential = 'craviaws20-dockerhub'
        dockerImage = ''
    }
    agent any
    tools {
        maven "M3"
    }
    
    stages {
    //    stage('Source') {
    //      steps {
    //           git credentialsId: 'gituserid', url: 'https://github.com/cravi-aws20/hello-world.git'    
    //      }
    //    }
        stage('Build') {
            steps {
                sh 'mvn clean install -Dmaven.test.skip=true'    
            }
        }
        stage('Test') {
            steps {
                withSonarQubeEnv('Sample') {
                sh "mvn clean verify sonar:sonar -Dsonar.projectKey=New"
                }
            }
        }
        stage('Build-Docker') {
            steps {
                echo "This is Build Docker"
                script {
                    dockerImage = docker.build imagename
                    //sh 'cp ./webapp/target/webapp.war /var/lib/tomcat9/webapps/webapp.war'
                }
            }
        }
        stage('Deploy') {
            steps {
                echo "This is Deploy stage"
                script {
                    //docker.withRegistry( '', registryCredential ) {
                    //    dockerImage.push("$BUILD_NUMBER")
                    //    dockerImage.push('latest')
                    sh 'cp ./webapp/target/webapp.war /var/lib/tomcat9/webapps/webapp.war'
                    //sh 'echo Hi....'
                    //}
                }        
            }
            
        }
    }    
}
