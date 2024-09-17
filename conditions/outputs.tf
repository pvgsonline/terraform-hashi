output "public_ip" {
  value       = aws_instance.terraform.public_ip
  description = "public ip address of instance"
}
