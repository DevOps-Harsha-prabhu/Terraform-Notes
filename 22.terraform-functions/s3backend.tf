terraform {
  backend "s3" {
    bucket = "stacksimplify-terraformbucket"
    key    = "terraform-functions.tfstate"
    region = "us-east-1"
  }
}