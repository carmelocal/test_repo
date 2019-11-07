//first JENKINS pipeline definition
node{
    currentBuild.result = "SUCCESS"
    // app will contains the docker image
    def app 
    def proxy = 'http://10.72.70.200:8888'
    try {
        //START
        //notifyStarted()
        //STAGE 1 - CLONE
        stage('Clone repository'){
           //gets all the SCM files
           checkout scm
        }   
        stage('Install kubectl'){
           //Install kubectl
           sh 'chmod 777 ./kubectl-install.sh'
           sh "./kubectl-install.sh ${proxy}"
        } 
    }
    catch (err) {
        currentBuild.result = "FAILURE"
        //ERROR
        //notifyFailure(err)
        //USED to notifiy to JENKINS that somthing happens
        throw err
    }
}
