variable "vpc_name" {
  description = "This is the VPC name"
  type        = string
}

variable "vpc_cidr" {
  description = "this is the cidr of vpc"
}
variable "aws_region" {
  description = "The region to deploy the resources"
  type = string
}

variable "cidr_public" {
  description = "this is the cidr of public subnet"
}


variable "cidr_private" {
  description = "this is the cidr of private subnet"
}

variable "cidr_data-a" {
  #type = map
  description = "this is the cidr of data subnet"
}

variable "cidr_data-b" {
  #type = map
  description = "this is the cidr of data subnet"
}
