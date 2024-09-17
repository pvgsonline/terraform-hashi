output "public_ip" {
  value       = aws_instance.terraform.public_ip
  sensitive   = false
  description = "provides the public ip address"
}
