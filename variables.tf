variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

# The below three variables are being imported from the terraform-aws-vpc-module
variable "vpc_id" {
  description = "The ID of the VPC the Internet Gateway will be associated with."
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the route table"
  type = string 
  default = "0.0.0.0/0"
}

variable "public_subnet_id" {
  description = "The Public Subnet ID"
  type        = string
}

variable "private_subnet_id" {
  description = "The Private Subnet ID"
  type        = string
}

# This variable is being imported from the terraform-aws-internet-gateway-module
variable "gateway_id" {
  description = "The ID of the internet gateway"
  type        = string
}

variable "public_route_name" {
  description = "The name for the Public Route Table"
  type = string
  default = "Public Route Table"
}

variable "private_route_name" {
  description = "The name for the Private Route Table"
  type = string
  default = "Private Route Table"
}

