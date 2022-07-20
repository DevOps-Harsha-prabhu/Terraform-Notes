terraform {
  backend "s3" {
    bucket = "stacksimplify-terraformbucket"
    key    = "project1.tfstate"
    region = "us-east-1"
  }
}
