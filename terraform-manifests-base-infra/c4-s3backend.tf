terraform {
  backend "s3" {
    bucket = "stacksimplify-terraformbucket"
    key    = "baseinfra.tfstate"
    region = "us-east-1"
  }
}
