terraform {
  backend "s3" {
    bucket = "stacksimplify-terraformbucket"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}