output "public_ip" {
  value       = aws_instance.terraform.public_ip.[count.index]
  sensitive   = false
  description = "provides the public ip address"
}
