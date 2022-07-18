#data "aws_vpc" "terraform-testing" {
#  id = "vpc-06bdd7c2d085a8b4d"
#}

#resource "aws_subnet" "subnet1-public" {
#    vpc_id = "${data.aws_vpc.terraform-testing.id}"
#    cidr_block = "10.1.0.0/16"
#    availability_zone = "us-east-1a"
#
#    tags = {
#        Name = "public-subnet-1"
#    }
#} 

#resource "aws_subnet" "subnet2-public" {
#    vpc_id = "${data.aws_vpc.terraform-testing.id}"
#    cidr_block = "10.2.0.0/16"
#    availability_zone = "us-east-1b"
#
#    tags = {
#        Name = "public-subnet-2"
#    }
#}