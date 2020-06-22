node {
    def x

    stage('Clone repository') 
    {
        checkout scm
    }

    stage('Build image') 
    {
        x = docker.build("userprashant/webserver")
    }

    stage('Test image') 
   {      
        x.inside
        {
            echo "Test passed"
        }
    }

    stage('Push image') {
       
        docker.withRegistry('https://registry.hub.docker.com', 'docker-service') {
            x.push("${env.BUILD_NUMBER}")
            x.push("latest")
            } 
                echo "Pushing image to DockerHub"
    }
   
}











