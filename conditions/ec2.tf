resource "aws_instance" "terraform"{
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    instance_type = var.environment == "prod" ? "t3.small" : "t3.micro"

    tags = {
        Name = "Terraform"
    }
}

resource "aws_security_group" "allow_ssh_terraform"{
    name="allow_sshh"
    description="allow SSH traffic from port 22"

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
    tags = {
        Name = "Terraform"
    }

    } 

