resource "aws_instance" "terraform"{
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

    tags = {
    Name = "terraform"    
    }
    
}

resource "aws_security_group" "allow_ssh_terraform" {
 name = "allow_sshh"    
 description = "allows ssh traffic from port no 22"

 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = var.ingress_rules
    from_port        = each.value["from_port"]
    to_port          = each.value["to_port"]
    protocol         = each.value["protocol"]
    cidr_blocks      = each.value["cidr_blocks"]
  }

    tags = {
    Name = "allow_sshh"
  }

}


