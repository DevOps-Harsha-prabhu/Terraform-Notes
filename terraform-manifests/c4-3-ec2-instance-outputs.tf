output "web-1_id" {
 description = "web-1 id"
  value       = ["${aws_instance.web-1.id}"]
}

output "web-1_public_ip" {
  description = "web-1 instance id"
  value       = ["${aws_instance.web-1.public_ip}"]
}

