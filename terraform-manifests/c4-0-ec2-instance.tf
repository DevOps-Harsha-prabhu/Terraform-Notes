 resource "aws_instance" "web-1" {
     ami = "ami-052efd3df9dad4825"
     #ami = "ami-0d857ff0f5fc4e03b"
     #ami = "${data.aws_ami.my_ami.id}"
     availability_zone = "us-east-1a"
     instance_type = "t2.micro"
     key_name = "terraform-key"
     subnet_id = "${aws_subnet.subnet1-public.id}"
     vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
     associate_public_ip_address = true	
     tags = {
         Name = "${var.environment}-Server-1"
         Env = "${var.environment}"
         Owner = "prabhu"
 	CostCenter = "ABCD"
     }
user_data = <<-EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y nginx
echo "<h1>${var.environment}-server-1</h1>" | sudo tee /var/www/html/index.html
EOF
 }