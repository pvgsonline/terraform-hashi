variable "instance_name" {
  type        = list(string)
  default     = ["mysql","backend","frontend"]
}

variable "zone_id"{
    type = string
    default = "Z0374240SJG94LFMUIHX"
}


variable "domain_name"{
    type = string
    default = "pvgs.online"
}

variable "common_tags"{
    type = map
    default = {
    Project = "expense"
    Environemnt = "dev"
    terraform = true
}
}