node ('Ubuntu-app-agent'){  
    def app
    stage('Cloning Git') {
        /* Let's make sure we have the repository cloned to our workspace */
       checkout scm
    }    
    stage('Build-and-Tag') {
    /* This builds the actual image; synonymous to
         * docker build on the command line */
        app = docker.build("devsecops1/devsecops-repo1")
    }
    stage('Post-to-dockerhub') {
    
     docker.withRegistry("https://registry.hub.docker.com", "293b98a9-2b59-4dac-94b8-7add96083b48") {
          app.push("latest")
        			}
         }
    stage('Pull-image-server') {
    
         sh "docker-compose down"
         sh "docker-compose up -d"	
      }

 
}
