variable "ami" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "tags" {
  type        = map
  default = {
    Name = "terraform"
    Project = "expense"
    Environment = "DEV"
    Component = "backend"
    Terraform = "true"

  }
  
}
 variable "name" {
   type        = string
   default     = "allow_sshh"
 }

 variable "description" {
    type = string
    default = "allow SSH traffic from port 22"
 }
 

variable "from_port" {
  type        = number
  default     = 22
}

variable "to_port"{
    type    = number
    default = 22
}

variable "protocol"{
    type  = string
    default = "TCP"
}

variable "ingress_cidr" {
  type        = list
  default     = ["0.0.0.0/0"]
}




