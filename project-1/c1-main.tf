 resource "aws_instance" "web-1" {
     ami = "ami-052efd3df9dad4825"
     #ami = "ami-0d857ff0f5fc4e03b"
     #ami = "${data.aws_ami.my_ami.id}"
     availability_zone = "us-east-1a"
     instance_type = "t2.micro"
     key_name = "terraform-key"
     subnet_id = "${data.aws_subnet.Terraform_Public_Subnet1-testing.id}"
     vpc_security_group_ids = ["${data.aws_security_group.allow-all.id}"]
     associate_public_ip_address = true	
     tags = {
         Name = "Server-1"
         Env = "Prod"
         Owner = "Sree"
 	CostCenter = "ABCD"
     }
 }