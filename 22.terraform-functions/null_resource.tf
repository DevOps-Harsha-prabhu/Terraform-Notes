resource "null_resource" "cluster" {
  count = var.environment == "prod" ? 3 : 1
  provisioner "file" {
    source      = "user_data.sh"
    destination = "/tmp/user_data.sh"
    connection  {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("terraform-key.pem")
      host        = element(aws_instance.public-server.*.public_ip, count.index)
    }
  }

}