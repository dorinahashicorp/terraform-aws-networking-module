# terraform-aws-networking-module
This module contains reusable code for deploying an AWS Internet Gateway, as well as a Public and Private  Route Table and their association with the public and private subnets, which are being created as part of a separate module. 

The public route table directs the flow of traffic to the internet, while the private route table denies communication with the internet. 

# Required providers
This requires Terraform version 1.5.0 or newer and AWS provider 5.0 or newer.
