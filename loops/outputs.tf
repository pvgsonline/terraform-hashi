output "public_ip" {
  value = [for instance in aws_instance.terraform : instance.public_ip]
  sensitive   = false
  description = "provides the public ip address"
}
