 pipeline {
    agent {
        label 'node-1'
    }

    stages {
        stage('Download Code') {
            steps {
                git branch: 'main', url: 'https://github.com/HandsOnDevOpsTraining/java-unit-tests-maven.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn clean test'
            }
        }
        stage ('Sonaqube for anaysis') {
            steps {
                echo 'Sonaqube for anaysis'
                sh 'mvn clean verify sonar:sonar -Dsonar.projectKey=Sonar-Jenkins1 -Dsonar.projectName=Sonar-Jenkins -Dsonar.host.url=http://3.147.126.133:9000 -Dsonar.token=sqp_b38c1d3589481c52f11aafdd46c8d24c3979516f'
            }
        }
         
    }
}
