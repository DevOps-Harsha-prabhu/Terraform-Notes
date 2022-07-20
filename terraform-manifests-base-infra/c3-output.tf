output "vpc_id_1" {
    value = "${aws_vpc.default.id}"
  
}

output "subnet_id_1" {
    value = "${aws_subnet.subnet1-public.id}"
  
}

output "sd_id_1" {
    value = "${aws_security_group.allow_all.id}"
  
}