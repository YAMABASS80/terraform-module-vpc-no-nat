variable "vpc_cidr_block" {
  type = string
  description = "CIDR range for the VPC"
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type = string
  description = "CIDR range for the VPC"
  default = "this"
}