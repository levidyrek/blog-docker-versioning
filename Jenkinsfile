pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    def version = readFile('VERSION')
                    def versions = version.split('\\.')
                    def major = versions[0]
                    def minor = versions[0] + '.' + versions[1]
                    def patch = version.trim()

                    docker.withRegistry('', 'my-dockerhub-credentials') {
                        def image = docker.build('levipayne/blog-docker-versioning:latest')
                        image.push()
                        image.push(major)
                        image.push(minor)
                        image.push(patch)
                    }
                }
            }
        }
    }
}
