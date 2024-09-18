resource "aws_instance" "terraform"{
    ami = data.aws_ami.rhel.id
    instance_type = var.instance_name[count.index] == "mysql" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

    tags = merge (
        var.common_tags ,{
            Name = var.instance_name
        }
    )
}

resource "aws_security_group" "allow_terraform_ssh"{
    name = "allow_sshh"
    description = "allow SSH traffic from port 22"

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

    tags = merge(
        var.common_tags ,{
            Name = "allow_sshh"
        }
    )

}