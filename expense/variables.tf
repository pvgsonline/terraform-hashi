variable "instance_name" {
  type        = list(string)
  default     = ["mysql","backend","frontend"]
}

variable "common_tags" {
  type        = map
  default     = {
    environment = "dev"
    project = "expense"
    terraform = true
  }
}

variable "zone_id" {
    default = "Z0374240SJG94LFMUIHX"
}

variable "domain_name" {
    default = "daws81s.online"
}
