variable "instance_name" {
  type        = list(string)
  default     = ["mysql","backend","frontend"]
}

variable "tags" {
  type        = map
  default     = {
    environment = "dev"
    project = "expense"
    terraform = true
  }
}
