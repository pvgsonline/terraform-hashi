resource "aws_instance" "terraform"{
    count = length(var.instance_name)
    ami = data.aws_ami.rhel9.id
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    instance_type = "t3.micro"

    tag = merge (
        common_tags, {
        Name = var.instance_name[count.index]
    }
    )   

}

resource "aws_security_group" "allow_ssh_terraform"{
    name = "allow_sshh"
    description = "allow ssh traffic from port 22"

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

  tags = merge (
    common_tags,{
        Name  = "allow_sshh"
    }
  )

}