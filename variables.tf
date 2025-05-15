variable "instance_type" {
  type        = string
  description = "The type of instance to launch"
  default     = "t3.micro"
}


variable "subnet_id" {
  type        = string
  description = "The subnet ID to launch the instance in"
  validation {
    condition     = length(regexall("^subnet-[\\d|\\w]+$", var.subnet_id))
    error_message = "The subnet id must be in the format subnet-[\\d|\\w]+$"
  }
}
