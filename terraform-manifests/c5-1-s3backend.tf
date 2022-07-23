terraform {
  backend "s3" {
    bucket = "stacksimplify-terraformbucket"
    key    = "workspace.tfstate"
    region = "us-east-1"
  }
}
