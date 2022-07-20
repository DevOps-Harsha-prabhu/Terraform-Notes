 resource "aws_instance" "web-1" {
     ami = "ami-052efd3df9dad4825"
     #ami = "ami-0d857ff0f5fc4e03b"
     #ami = "${data.aws_ami.my_ami.id}"
     availability_zone = "us-east-1a"
     instance_type = "t2.micro"
     key_name = "terraform-key"
     subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id_1
     vpc_security_group_ids = ["${data.terraform_remote_state.vpc.outputs.sd_id_1}"]
     associate_public_ip_address = true	
     tags = {
         Name = "Server-1"
         Env = "Prod"
         Owner = "Sree"
 	CostCenter = "ABCD"
     }
 }