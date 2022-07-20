data "aws_vpc" "terraform-aws-testing" {
    id = "vpc-0eaf071b506036018"
}

data "aws_subnet" "Terraform_Public_Subnet1-testing" {
    id = "subnet-0846d0b4aea9f8197"
}


data "aws_security_group" "allow-all" {
  id = "sg-003e1518515e691c1"
}