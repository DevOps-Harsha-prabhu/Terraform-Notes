terraform {
  backend "s3" {
    bucket = "stacksimplify-terraformbucket"
    key    = "project-2.tfstate"
    region = "us-east-1"
  }
}
