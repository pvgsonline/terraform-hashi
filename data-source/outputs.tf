output "ami_id" {
  value       = data.aws_ami.rhel9.id
  description = "ami id detail"
}
