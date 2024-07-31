variable "vpc_id" {
  description = "The ID of the VPC the Internet Gateway will be associated with."
  type        = string
}

variable "gateway_name" {
  description = "The name of the Internet Gateway"
  type        = string
  default     = "Core Gateway"  
}

variable "public_subnet_id" {
  description = "The Public Subnet ID"
  type        = string
}

variable "private_subnet_id" {
  description = "The Private Subnet ID"
  type        = string
}
