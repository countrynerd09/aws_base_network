variable "aws_region" {
  description = "The region name to deploy into"
  type        = string
  default     = "us-west-2"
}

variable "profile" {
  description = "This is your AWS profile"
  type = string
  default     = "default"
}

variable "subnet_count" {
  description = "The number of desired subnets"
  type        = number
  default     = 3
}

variable "az_map" {
  type = map(any)

  default = {
    0 = "a"
    1 = "b"
    2 = "c"
  }
}