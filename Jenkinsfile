pipeline {
    agent any
    stages {
        stage('prep') {
            steps {
                sh '[ -d output ] && rm -r output'
            }
        }
        stage('version') {
            steps {
                sh 'sed -i "/Version/ s/\$/.${BUILD_NUMBER}/" DESCRIPTION'
            }
        }
        stage('build') {
            steps {
                sh 'cd data-raw && make'
                sh 'R -e \'devtools::build(path = "/tmp/")\''
            }
        }
        stage('Archive') {
            steps {
                sh '[ -d output ] || mkdir output'
                sh 'mv /tmp/dailies_*.tar.gz ./output/'
                archiveArtifacts 'output/dailies_*.tar.gz'
            }
        }
    }
}
