data "terraform_remote_state" "vpc" {
 backend = "s3" 
    config = {
    key    = "baseinfra.tfstate"
    region = "us-east-1"
    bucket = "stacksimplify-terraformbucket"
  }   
}
