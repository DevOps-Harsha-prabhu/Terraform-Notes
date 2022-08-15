
resource "aws_instance" "public-server" {
  #count                       = length(var.public_cidr_block)
  count                       = var.environment == "prod" ? 3 : 1
  ami                         = lookup(var.amis, var.aws_region)
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = element(aws_subnet.public-subnets.*.id, count.index)
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name        = "${var.vpc_name}-Public-Server-${count.index + 1}"
    Deployed_by = local.Deployed_by
    owner       = local.owner
    costcenter  = local.costcenter
    TeamDL      = local.TeamDL
    environment = "${var.environment}"
  }
  user_data = <<-EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y nginx
echo "<h1>${var.vpc_name}-public-server-${count.index + 1}</h1>" | sudo tee /var/www/html/index.html
EOF
}
