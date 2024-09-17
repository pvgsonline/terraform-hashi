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
