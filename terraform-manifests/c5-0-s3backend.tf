terraform {
  backend "s3" {
    bucket = "stacksimplify-terraformbucket"
    key    = "workspace.tfstate"
    region = "us-east-1"
    #dynamodb_table = "terraform-state-lock-dynamo"
  }
}