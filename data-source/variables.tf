variable instance_name {
  type        = list(string)
  default     = ["mysql","backend","frontend"]
}

variable common_tags {
    type = map
    default = {
        Project =  expense
        Environment = dev
        terraform = true
    }
}
