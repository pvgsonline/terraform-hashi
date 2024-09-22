variable instances {
  type        = map
  default     = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "zone_id" {
    default = "Z0374240SJG94LFMUIHX"
}

variable "domain_name" {
    default = "daws81s.online"
}